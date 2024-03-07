namespace AkkaTicket.Shared.Messages.Event.In
{
    public sealed class RequestReadEventData
    {
        public RequestReadEventData(string requestId, string eventId, string currency)
        {
            RequestId = requestId;
            EventId = eventId;
            Currency = currency;
        }

        public string RequestId { get; }
        public string EventId { get; }
        public string Currency { get; }
    }
}
