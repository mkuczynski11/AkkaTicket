namespace AkkaTicket.Shared.Messages.User
{
    public sealed class ReadUserData
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
