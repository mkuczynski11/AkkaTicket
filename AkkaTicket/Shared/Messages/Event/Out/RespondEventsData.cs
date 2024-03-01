namespace AkkaTicket.Shared.Messages.Event.Out
{
    public sealed class RespondEventsData
    {
        public RespondEventsData(string requestId, List<EventData> events)
        {
            RequestId = requestId;
            Events = events;
        }
        public string RequestId;
        public List<EventData> Events;
        public class EventData
        {
            public EventData(string id, string name) 
            {
                Id = id;
                Name = name;
            }
            public string Id;
            public string Name;
        }
    }
}
