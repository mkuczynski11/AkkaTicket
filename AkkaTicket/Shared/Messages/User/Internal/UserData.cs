namespace AkkaTicket.Shared.Messages.User.Internal
{
    public sealed class UserData
    {
        public UserData(string requestId, string email)
        {
            RequestId = requestId;
            Email = email;
        }
        public string RequestId { get; }
        public string Email { get; }
    }
}
