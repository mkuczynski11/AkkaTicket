using Akka.Actor;
using Akka.Event;
using AkkaTicket.Shared.Messages.Event;
using AkkaTicket.Shared.Messages.User;

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
            UserManager = Context.ActorSelection("/user/ticketing/userManager");
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
                case ReserveSeat reserveSeat:
                    if (Status.Equals(ReservationStates.CREATED))
                    {
                        var senderActor = Sender;
                        var reservationActor = Self;
                        var userResponse = await UserManager.Ask<object>(new ReadUserData(reserveSeat.RequestId, reserveSeat.UserEmail));

                        if (userResponse is RespondUserDoesNotExist)
                        {
                            Status = ReservationStates.DECLINED;
                            senderActor.Tell(userResponse);
                            break;
                        }

                        var response = await Event.Ask<object>(new ReservationRequest(reserveSeat.RequestId, reserveSeat.SeatId, reservationActor));
                        if (response is ReservationDeclination)
                        {
                            Status = ReservationStates.DECLINED;
                            senderActor.Tell(response);
                            break;
                        }

                        ReservationConfirmation responseConfirmation = (ReservationConfirmation) response;
                        Status = ReservationStates.ACTIVE;
                        SeatId = responseConfirmation.SeatId;
                        UserEmail = reserveSeat.UserEmail;
                        var reservationCreatedMsg = new RespondReservationCreated(reserveSeat.RequestId, this.Id, this.EventId, this.SeatId, reserveSeat.UserEmail);
                        senderActor.Tell(reservationCreatedMsg);
                        UserManager.Tell(reservationCreatedMsg);
                        break;
                    }
                    break;
                case RequestChangeEvent requestChangeEventMsg:
                    Log.Info($"Event for reservation {Id} changed. Sending email to allow reservation changes to be made");
                    // send email of reservation change with an option to cancel reservation
                    break;
                case RequestCancelEvent requestCancelEventMsg:
                    Status = ReservationStates.CANCELED;
                    // send email with reservation cancelation information
                    break;
                case ReadReservationData readReservationDataMsg:
                    Sender.Tell(new RespondReservationData(readReservationDataMsg.RequestId, Id, Status, EventId, SeatId!));
                    break;
                case CancelReservation cancelReservationMsg:
                    Status = ReservationStates.CANCELED;
                    Sender.Tell(new RespondReservationCancelled(cancelReservationMsg.RequestId));
                    var reservationCancelledMsg = new ReservationCancelled(cancelReservationMsg.RequestId, Id, UserEmail!);
                    Event.Tell(reservationCancelledMsg);
                    break;
            }
        }

        public static Props Props(string id, string eventId, IActorRef eventRef) => Akka.Actor.Props.Create(() => new Reservation(id, eventId, eventRef));
    }
}
