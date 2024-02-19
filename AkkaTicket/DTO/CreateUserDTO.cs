namespace AkkaTicket.DTO
{
    public sealed class CreateUserDTO
    {
        public CreateUserDTO(string email, string name, string surname) 
        {
            Email = email; Name = name; Surname = surname;
        }
        public string Email { get; }
        public string Name { get; }
        public string Surname { get; }
    }
}
