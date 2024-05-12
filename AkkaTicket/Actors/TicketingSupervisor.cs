using Akka.Actor;
using Akka.Event;
using AkkaTicket.Shared.Messages.Event.In;
using AkkaTicket.Shared.Messages.Reservation.In;
using AkkaTicket.Shared.Messages.User.In;

namespace AkkaTicket.Actors
{
    public class TicketingSupervisor : UntypedActor
    {
        public ILoggingAdapter Log { get; } = Context.GetLogger();
        IActorRef userManagerActor;
        IActorRef bookingManagerActor = Context.ActorOf(BookingManager.Props(), "bookingManager");
        public TicketingSupervisor(IActorRef shardRegion)
        {
            userManagerActor = Context.ActorOf(UserManager.Props(shardRegion), "userManager");
        }
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
        public static Props Props(IActorRef shardRegion) => Akka.Actor.Props.Create<TicketingSupervisor>(() => new TicketingSupervisor(shardRegion));
    }
}
