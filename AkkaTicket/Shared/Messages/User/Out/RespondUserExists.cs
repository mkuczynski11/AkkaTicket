namespace AkkaTicket.Shared.Messages.User.Out
{
    public sealed class RespondUserExists
    {
        public RespondUserExists(string requestId)
        {
            RequestId = requestId;
        }
        public string RequestId { get; }
    }
}
