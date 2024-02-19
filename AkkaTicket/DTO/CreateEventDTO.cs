namespace AkkaTicket.DTO
{
    public sealed class CreateEventDTO
    {
        public CreateEventDTO(string name, double duration, string location, DateTime date, List<CreateEventSeatDTO> seats)
        {
            Name = name;
            Duration = duration;
            Location = location;
            Date = date;
            Seats = seats;
        }
        public string Name { get; }
        public double Duration { get; }
        public string Location { get; }
        public DateTime Date { get; }
        public List<CreateEventSeatDTO> Seats { get; }
    }
}
