namespace AkkaTicket.Shared.Messages.User
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
