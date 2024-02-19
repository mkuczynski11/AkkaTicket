namespace AkkaTicket.DTO
{
    public sealed class EventDataDTO
    {
        public EventDataDTO(string id, string name, double duration, string location, DateTime date, int seatsAmount, int availableSeatsAmount, List<EventSeatDTO
            > seats)
        {
            Id = id;
            Name = name;
            Duration = duration;
            Location = location;
            Date = date;
            SeatsAmount = seatsAmount;
            AvailableSeatsAmount = availableSeatsAmount;
            EventSeats = seats;
        }
        public string Id { get; }
        public string Name { get; }
        public double Duration { get; }
        public string Location { get; }
        public DateTime Date { get; }
        public int SeatsAmount { get; }
        public int AvailableSeatsAmount { get; }
        public List<EventSeatDTO> EventSeats { get; }
    }
}
