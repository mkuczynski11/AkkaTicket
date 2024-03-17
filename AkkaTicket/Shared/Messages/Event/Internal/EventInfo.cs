using Akka.Actor;

namespace AkkaTicket.Shared.Messages.Event.Internal
{
    public sealed class EventInfo
    {
        public EventInfo(IActorRef eventActor, string id)
        {
            EventActor = eventActor;
            Id = id;
        }
        public IActorRef EventActor { get; }
        public string Id { get; }
    }
}
