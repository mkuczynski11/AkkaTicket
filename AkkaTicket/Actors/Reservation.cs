using Akka.Actor;
using Akka.Event;
using AkkaTicket.Shared.Messages.Event.In;
using AkkaTicket.Shared.Messages.Event.Internal;
using AkkaTicket.Shared.Messages.Reservation.In;
using AkkaTicket.Shared.Messages.Reservation.Internal;
using AkkaTicket.Shared.Messages.Reservation.Out;
using AkkaTicket.Shared.Messages.User.In;
using AkkaTicket.Shared.Messages.User.Internal;
using AkkaTicket.Shared.Messages.User.Out;

namespace AkkaTicket.Actors
{
    public static class ReservationStates
    {
        public static readonly string CREATED = "CREATED";
        public static readonly string DECLINED = "DECLINED";
        public static readonly string ACTIVE = "ACTIVE";
        public static readonly string CANCELED = "CANCELED";
    }
    public class Reservation : UntypedActor
    {
        private string Id { get; set; }
        private string Status { get; set; }
        private string EventId { get; set; }
        private string? SeatId { get; set; }
        private string? UserEmail { get; set; }
        private IActorRef Event { get; set; }
        private ActorSelection UserManager { get; }
        public Reservation(string id, string eventId, IActorRef eventRef)
        {
            Id = id;
            EventId = eventId;
            Status = ReservationStates.CREATED;
            Event = eventRef;
            UserManager = Context.ActorSelection("../../userManager");
        }
        protected ILoggingAdapter Log { get; } = Context.GetLogger();
        protected override void PreStart()
        {
            Log.Info($"Reservation actor {Id} started");
        }

        protected override void PostStop()
        {
            Log.Info($"Reservation actor {Id} stopped");
        }
        protected override async void OnReceive(object message)
        {
            switch (message)
            {
                case RequestReserveSeat reserveSeatMsg:
                    if (Status.Equals(ReservationStates.CREATED))
                    {
                        var senderActor = Sender;
                        var reservationActor = Self;
                        var userResponse = await UserManager.Ask<object>(new ReadUserData(reserveSeatMsg.RequestId, reserveSeatMsg.UserEmail));

                        if (userResponse is RespondUserDoesNotExist)
                        {
                            Status = ReservationStates.DECLINED;
                            senderActor.Tell(userResponse);
                            break;
                        }

                        var response = await Event.Ask<object>(new ReservationRequest(reserveSeatMsg.RequestId, reserveSeatMsg.SeatId, reservationActor));
                        if (response is ReservationDeclination)
                        {
                            Status = ReservationStates.DECLINED;
                            senderActor.Tell(response);
                            break;
                        }

                        ReservationConfirmation responseConfirmation = (ReservationConfirmation) response;
                        Status = ReservationStates.ACTIVE;
                        SeatId = responseConfirmation.SeatId;
                        UserEmail = reserveSeatMsg.UserEmail;
                        senderActor.Tell(new RespondReservationCreated(reserveSeatMsg.RequestId, this.Id));
                        UserManager.Tell(new ReservationCreated(reserveSeatMsg.RequestId, this.Id, this.UserEmail));
                        break;
                    }
                    break;
                case RequestReadReservationData readReservationDataMsg:
                    Sender.Tell(new RespondReservationData(readReservationDataMsg.RequestId, Id, Status, EventId, SeatId!));
                    break;
                case RequestCancelReservation cancelReservationMsg:
                    Status = ReservationStates.CANCELED;
                    Sender.Tell(new RespondReservationCancelled(cancelReservationMsg.RequestId, Id));
                    var reservationCancelledMsg = new ReservationCancelled(cancelReservationMsg.RequestId, Id, UserEmail!);
                    Event.Tell(reservationCancelledMsg);
                    break;
                case EventChanged eventChangedMsg:
                    Log.Info($"Event for reservation {Id} changed. Sending email to allow reservation changes to be made");
                    // send email of reservation change with an option to cancel reservation
                    break;
                case EventCancelled eventCancelledMsg:
                    Status = ReservationStates.CANCELED;
                    Log.Info($"Reservation {Id} has been cancelled because of Event cancellation. Sending email with that information");
                    // send email with reservation cancelation information
                    break;
            }
        }

        public static Props Props(string id, string eventId, IActorRef eventRef) => Akka.Actor.Props.Create(() => new Reservation(id, eventId, eventRef));
    }
}
