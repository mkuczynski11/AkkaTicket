namespace AkkaTicket.Shared.Messages.Event.Out
{
    public sealed class RespondSeatDoesNotExist
    {
        public RespondSeatDoesNotExist(string requestId)
        {
            RequestId = requestId;
        }
        public string RequestId { get; }
    }
}
