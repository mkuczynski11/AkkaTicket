namespace AkkaTicket.Shared.Messages.Event.Internal
{
    public sealed class EventChanged
    {
        public EventChanged(string requestId)
        {
            RequestId = requestId;
        }
        public string RequestId { get; }
    }
}
