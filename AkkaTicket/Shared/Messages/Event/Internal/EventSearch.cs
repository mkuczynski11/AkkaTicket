using Akka.Actor;
using AkkaTicket.Actors;

namespace AkkaTicket.Shared.Messages.Event.Internal
{
    public sealed class EventSearch
    {
        public EventSearch(Dictionary<IActorRef, string> actorToEventId, string requestId, IActorRef sender, TimeSpan timeSpan, EventQuery.Parameters parameters)
        {
            ActorToEventId = actorToEventId;
            RequestId = requestId;
            Sender = sender;
            TimeSpan = timeSpan;
            Parameters = parameters;
        }
        public Dictionary<IActorRef, string> ActorToEventId { get; }
        public string RequestId { get; }
        public IActorRef Sender { get; }
        public TimeSpan TimeSpan { get; }
        public EventQuery.Parameters Parameters { get; }
    }
}
