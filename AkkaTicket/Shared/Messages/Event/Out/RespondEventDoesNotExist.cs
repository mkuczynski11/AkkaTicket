namespace AkkaTicket.Shared.Messages.Event.Out
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
