namespace AkkaTicket.Shared.Messages.Event.Internal
{
    public sealed class EventCancelled
    {
        public EventCancelled(string requestID)
        {
            RequestID = requestID;
        }

        public string RequestID { get; }
    }
}
