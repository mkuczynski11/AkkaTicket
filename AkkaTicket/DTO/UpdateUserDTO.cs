namespace AkkaTicket.DTO
{
    public sealed class UpdateUserDTO
    {
        public UpdateUserDTO(string name, string surname)
        {
            Name = name; Surname = surname;
        }
        public string Name { get; }
        public string Surname { get; }
    }
}
