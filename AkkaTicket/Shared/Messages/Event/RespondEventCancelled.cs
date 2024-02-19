namespace AkkaTicket.Shared.Messages.Event
{
    public sealed class RespondEventCancelled
    {
        public RespondEventCancelled(string requestId)
        {
            RequestId = requestId;
        }

        public string RequestId { get; }
    }
}
