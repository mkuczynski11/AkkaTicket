using Akka.Actor;
using Akka.Event;
using AkkaTicket.Shared.Messages;
using AkkaTicket.Shared.Messages.Event.In;

namespace AkkaTicket.Actors
{
    public class TicketingSupervisor : UntypedActor
    {
        public ILoggingAdapter Log { get; } = Context.GetLogger();
        protected override void PreStart() => Log.Info("Ticketing Application started");
        protected override void PostStop() => Log.Info("Ticketing Application stopped");

        protected override void OnReceive(object message)
        {
            
        }
        public static Props Props() => Akka.Actor.Props.Create<TicketingSupervisor>();
    }
}
