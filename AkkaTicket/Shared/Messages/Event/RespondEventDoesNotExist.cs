namespace AkkaTicket.Shared.Messages.Event
{
    public sealed class RespondEventDoesNotExist
    {
        public RespondEventDoesNotExist(string requestId)
        {
            RequestId = requestId;
        }
        public string RequestId { get; }
    }
}
