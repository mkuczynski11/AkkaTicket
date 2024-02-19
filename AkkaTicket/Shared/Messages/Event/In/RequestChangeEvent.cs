namespace AkkaTicket.Shared.Messages.Event.In
{
    public sealed class RequestChangeEvent
    {
        public RequestChangeEvent(string requestId, string eventId, string name, double duration, string location, DateTime date)
        {
            RequestId = requestId;
            EventId = eventId;
            Name = name;
            Duration = duration;
            Location = location;
            Date = date;
        }
        public string RequestId { get; }
        public string EventId { get; }
        public string Name { get; }
        public double Duration { get; }
        public string Location { get; }
        public DateTime Date { get; }
    }
}
