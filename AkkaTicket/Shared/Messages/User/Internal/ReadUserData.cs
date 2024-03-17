namespace AkkaTicket.Shared.Messages.User.Internal
{
    public class ReadUserData
    {
        public ReadUserData(string requestId, string email)
        {
            EntityId = email;
            RequestId = requestId;
            Email = email;
        }
        public string EntityId { get; }
        public string RequestId { get; }
        public string Email { get; }
    }
}
