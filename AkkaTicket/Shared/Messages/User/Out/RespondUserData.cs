namespace AkkaTicket.Shared.Messages.User.Out
{
    public sealed class RespondUserData
    {
        public RespondUserData(string requestId, string email, string name, string surname, List<string> reservations)
        {
            RequestId = requestId;
            Email = email;
            Name = name;
            Surname = surname;
            Reservations = reservations;
        }
        public string RequestId { get; }
        public string Email { get; }
        public string Name { get; }
        public string Surname { get; }
        public List<string> Reservations { get; }
    }
}
