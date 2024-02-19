using AkkaTicket.Actors;

namespace AkkaTicket.Shared.Messages.Event
{
    public sealed class RespondEventData
    {
        public RespondEventData(string requestId, string id, string name, double duration, string location, DateTime date, int seatsAmount, int availableSeatsAmount, List<Seat> seats)
        {
            RequestId = requestId;
            Id = id;
            Name = name;
            Duration = duration;
            Location = location;
            Date = date;
            SeatsAmount = seatsAmount;
            AvailableSeatsAmount = availableSeatsAmount;
            Seats = seats;
        }
        public string RequestId { get; }
        public string Id { get; }
        public string Name { get; }
        public double Duration { get; }
        public string Location { get; }
        public DateTime Date { get; }
        public int SeatsAmount { get; }
        public int AvailableSeatsAmount { get; }
        public List<Seat> Seats { get; }
    }
}
