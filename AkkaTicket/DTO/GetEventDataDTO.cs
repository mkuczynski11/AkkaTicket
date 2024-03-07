namespace AkkaTicket.DTO
{
    public sealed class GetEventDataDTO
    {
        public GetEventDataDTO(string id, string name, double duration, string location, DateTime date, string status, int seatsAmount, int availableSeatsAmount, List<GetEventSeatDTO
            > seats, double cheapestPrice)
        {
            Id = id;
            Name = name;
            Duration = duration;
            Location = location;
            Date = date;
            SeatsAmount = seatsAmount;
            AvailableSeatsAmount = availableSeatsAmount;
            EventSeats = seats;
            Status = status;
            CheapestPrice = cheapestPrice;
        }
        public string Id { get; }
        public string Name { get; }
        public double Duration { get; }
        public string Location { get; }
        public DateTime Date { get; }
        public string Status { get; }
        public int SeatsAmount { get; }
        public int AvailableSeatsAmount { get; }
        public List<GetEventSeatDTO> EventSeats { get; }
        public double CheapestPrice { get; }
    }
}
