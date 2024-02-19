namespace AkkaTicket.Shared.Messages.Event
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
