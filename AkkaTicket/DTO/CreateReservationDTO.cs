namespace AkkaTicket.DTO
{
    public sealed class CreateReservationDTO
    {
        public CreateReservationDTO(string email)
        {
            Email = email;
        }
        public string Email { get; }
    }
}
