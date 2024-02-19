namespace AkkaTicket.Shared.Messages.Event.In
{
    public sealed class RequestReadEventData
    {
        public RequestReadEventData(string requestId, string eventId)
        {
            RequestId = requestId;
            EventId = eventId;
        }

        public string RequestId { get; }
        public string EventId { get; }
    }
}
