namespace AkkaTicket.Shared.Messages.User.In
{
    public sealed class RequestChangeUser
    {
        public RequestChangeUser(string requestId, string email, string name, string surname)
        {
            EntityId = email;  RequestId = requestId; Email = email; Name = name; Surname = surname;
        }
        public string EntityId { get; }
        public string RequestId { get; }
        public string Email { get; }
        public string Name { get; }
        public string Surname { get; }
    }
}
