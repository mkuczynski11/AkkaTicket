using Akka.Actor;
using Akka.Event;
using AkkaTicket.Shared.Messages.Event.Internal;
using AkkaTicket.Shared.Messages.Event.Out;
using AkkaTicket.Shared.Messages.Other;

namespace AkkaTicket.Actors
{
    public class EventQuery : UntypedActor
    {
        private ICancelable queryTimeoutTimer;

        public EventQuery(Dictionary<IActorRef, string> actorToEventId, string requestId, IActorRef requester, TimeSpan timeout, Parameters @params)
        {
            ActorToEventId = actorToEventId;
            RequestId = requestId;
            Requester = requester;
            Timeout = timeout;

            queryTimeoutTimer = Context.System.Scheduler.ScheduleTellOnceCancelable(timeout, Self, CollectionTimeout.Instance, Self);

            Become(WaitingForReplies(new Dictionary<string, EventData>(), new HashSet<IActorRef>(ActorToEventId.Keys)));
            Params = @params;
        }
        public Dictionary<IActorRef, string> ActorToEventId { get; }
        public string RequestId { get; }
        public IActorRef Requester { get; }
        public TimeSpan Timeout { get; }
        public Parameters Params { get; }

        protected override void PreStart()
        {
            foreach (var actor in ActorToEventId.Keys)
            {
                Context.Watch(actor);
                actor.Tell(new ReadEventData(RequestId));
            }
        }

        protected override void PostStop()
        {
            queryTimeoutTimer.Cancel();
        }
        protected ILoggingAdapter Log { get; } = Context.GetLogger();

        public UntypedReceive WaitingForReplies(Dictionary<string, EventData> repliesSoFar, HashSet<IActorRef> stillWaiting)
        {
            return message =>
            {
                switch(message)
                {
                    case EventData response when response.RequestId == RequestId:
                        var eventActor = Sender;
                        ReceivedResponse(eventActor, response, stillWaiting, repliesSoFar);
                        break;
                    case Terminated t:
                        ReceivedResponse(t.ActorRef, null, stillWaiting, repliesSoFar);
                        break;
                    case CollectionTimeout _:
                        var replies = new Dictionary<string, EventData>(repliesSoFar);
                        List<RespondEventsData.EventData> events = replies.Values.Select(x => new RespondEventsData.EventData(x.Id, x.Name)).ToList();
                        Requester.Tell(new RespondEventsData(RequestId, events));
                        Context.Stop(Self);
                        break;
                }
            };
        }

        public void ReceivedResponse(IActorRef eventActor, EventData? response, HashSet<IActorRef> stillWaiting, Dictionary<string, EventData> repliesSoFar)
        {
            Context.Unwatch(eventActor);
            var eventId = ActorToEventId[eventActor];
            stillWaiting.Remove(eventActor);

            if (response != null && checkParameters(response))
            {
                repliesSoFar.Add(eventId, response);
            }

            if (stillWaiting.Count == 0)
            {
                List<RespondEventsData.EventData> events = repliesSoFar.Values.Select(x => new RespondEventsData.EventData(x.Id, x.Name)).ToList();
                Requester.Tell(new RespondEventsData(RequestId, events));
            }
            else
            {
                Context.Become(WaitingForReplies(repliesSoFar, stillWaiting));
            }
        }

        protected override void OnReceive(object message)
        {

        }

        public static Props Props(Dictionary<IActorRef, string> actorToEventId, string requestId, IActorRef requester, TimeSpan timeout, Parameters @params) => Akka.Actor.Props.Create(() => new EventQuery(actorToEventId, requestId, requester, timeout, @params));
        private bool checkParameters(EventData response)
        {
            bool result = true;
            if (Params.Name != null && Params.Name.Length > 0)
            {
                result = response.Name.ToLower().StartsWith(Params.Name.ToLower()) ? result : false;
            }
            return result;
        }
        public class Parameters
        {
            public Parameters(string name) 
            {
                Name = name;
            }
            public string Name { get; }
        }
    }
}
