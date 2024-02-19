namespace AkkaTicket.DTO
{
    public sealed class UserDataDTO
    {
        public UserDataDTO(string email, string name, string surname, List<string> reservations) 
        {
            Email = email; Name = name; Surname = surname; Reservations = reservations;
        }
        public string Email { get; }
        public string Name { get; }
        public string Surname { get; }
        public List<string > Reservations { get; }
    }
}
