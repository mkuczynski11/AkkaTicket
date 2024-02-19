namespace AkkaTicket.Shared.Messages.User.Out
{
    public sealed class RespondUserDoesNotExist
    {
        public RespondUserDoesNotExist(string requestId)
        {
            RequestId = requestId;
        }
        public string RequestId { get; }
    }
}
