using Akka.Actor;
using Akka.Event;
using AkkaTicket.Shared.Messages;
using AkkaTicket.Shared.Messages.Event.In;
using AkkaTicket.Shared.Messages.Reservation.In;
using AkkaTicket.Shared.Messages.User.In;

namespace AkkaTicket.Actors
{
    public class TicketingSupervisor : UntypedActor
    {
        public ILoggingAdapter Log { get; } = Context.GetLogger();
        IActorRef userManagerActor = Context.ActorOf(UserManager.Props(), "userManager");
        IActorRef bookingManagerActor = Context.ActorOf(BookingManager.Props(), "bookingManager");
        protected override void PreStart() => Log.Info("Ticketing Application started");
        protected override void PostStop() => Log.Info("Ticketing Application stopped");

        protected override void OnReceive(object message)
        {
            switch (message)
            {
                case RequestCreateUser requestCreateUserMsg:
                    userManagerActor.Forward(requestCreateUserMsg);
                    break;
                case RequestReadUserData readUserDataMsg:
                    userManagerActor.Forward(readUserDataMsg);
                    break;
                case RequestChangeUser requestChangeUserMsg:
                    userManagerActor.Forward(requestChangeUserMsg);
                    break;
                case RequestCreateEvent requestCreateEventMsg:
                    bookingManagerActor.Forward(requestCreateEventMsg);
                    break;
                case RequestReadEvents requestReadEventsMsg:
                    bookingManagerActor.Forward(requestReadEventsMsg);
                    break;
                case RequestReadEventData readEventDataMsg:
                    bookingManagerActor.Forward(readEventDataMsg);
                    break;
                case RequestChangeEvent requestChangeEventMsg:
                    bookingManagerActor.Forward(requestChangeEventMsg);
                    break;
                case RequestCancelEvent requestCancelEventMsg:
                    bookingManagerActor.Forward(requestCancelEventMsg);
                    break;
                case RequestReserveSeat reserveSeatMsg:
                    bookingManagerActor.Forward(reserveSeatMsg);
                    break;
                case RequestReadReservationData readReservationDataMsg:
                    bookingManagerActor.Forward(readReservationDataMsg);
                    break;
                case RequestCancelReservation cancelReservationMsg:
                    bookingManagerActor.Forward(cancelReservationMsg);
                    break;
            }
        }
        public static Props Props() => Akka.Actor.Props.Create<TicketingSupervisor>();
    }
}
