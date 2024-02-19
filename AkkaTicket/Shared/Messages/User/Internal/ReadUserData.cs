namespace AkkaTicket.Shared.Messages.User.Internal
{
    public class ReadUserData
    {
        public ReadUserData(string requestId, string email)
        {
            RequestId = requestId;
            Email = email;
        }

        public string RequestId { get; }
        public string Email { get; }
    }
}
