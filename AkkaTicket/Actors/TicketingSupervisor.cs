using Akka.Actor;
using Akka.Event;
using AkkaTicket.Shared.Messages;
using AkkaTicket.Shared.Messages.Event;
using AkkaTicket.Shared.Messages.User;

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
                case ReadUserData readUserDataMsg:
                    userManagerActor.Forward(readUserDataMsg);
                    break;
                case RequestChangeUser requestChangeUserMsg:
                    userManagerActor.Forward(requestChangeUserMsg);
                    break;
                case ReadEventData readEventDataMsg:
                    bookingManagerActor.Forward(readEventDataMsg);
                    break;
                case RequestCreateEvent requestCreateEventMsg:
                    bookingManagerActor.Forward(requestCreateEventMsg);
                    break;
                case RequestCancelEvent requestCancelEventMsg:
                    bookingManagerActor.Forward(requestCancelEventMsg);
                    break;
                case RequestChangeEvent requestChangeEventMsg:
                    bookingManagerActor.Forward(requestChangeEventMsg);
                    break;
                case ReserveSeat reserveSeatMsg:
                    bookingManagerActor.Forward(reserveSeatMsg);
                    break;
                case ReadReservationData readReservationDataMsg:
                    bookingManagerActor.Forward(readReservationDataMsg);
                    break;
                case CancelReservation cancelReservationMsg:
                    bookingManagerActor.Forward(cancelReservationMsg);
                    break;
            }
        }
        public static Props Props() => Akka.Actor.Props.Create<TicketingSupervisor>();
    }
}
