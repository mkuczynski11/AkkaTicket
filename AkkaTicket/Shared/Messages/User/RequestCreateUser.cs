namespace AkkaTicket.Shared.Messages.User
{
    public sealed class RequestCreateUser
    {
        public RequestCreateUser(string requestId, string email, string name, string surname) 
        {
            RequestId = requestId; Email = email; Name = name; Surname = surname;
        }

        public string RequestId { get; }
        public string Email { get; }
        public string Name {  get; }
        public string Surname { get; }
    }
}
