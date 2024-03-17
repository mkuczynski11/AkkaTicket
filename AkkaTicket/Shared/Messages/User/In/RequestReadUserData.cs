namespace AkkaTicket.Shared.Messages.User.In
{
    public sealed class RequestReadUserData
    {
        public RequestReadUserData(string requestId, string email)
        {
            RequestId = requestId;
            Email = email;
            EntityId = email;
        }
        public string EntityId { get; }
        public string RequestId { get; }
        public string Email { get; }
    }
}
