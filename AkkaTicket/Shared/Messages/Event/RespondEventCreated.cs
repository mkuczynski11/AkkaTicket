namespace AkkaTicket.Shared.Messages.Event
{
    public sealed class RespondEventCreated
    {
        public RespondEventCreated(string requestId, string eventId)
        {
            RequestId = requestId;
            EventId = eventId;
        }

        public string RequestId { get; }
        public string EventId { get; }
    }
}
