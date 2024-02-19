namespace AkkaTicket.Shared.Messages.Event.Out
{
    public sealed class RespondEventCancelled
    {
        public RespondEventCancelled(string requestId, string eventId)
        {
            RequestId = requestId;
            EventId = eventId;
        }

        public string RequestId { get; }
        public string EventId { get; }
    }
}
