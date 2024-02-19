namespace AkkaTicket.Shared.Messages.Event
{
    public sealed class RequestCreateEvent
    {
        public RequestCreateEvent(string requestId, string name, double duration, string location, DateTime date, List<SeatData> seats)
        {
            RequestId = requestId;
            Name = name;
            Duration = duration;
            Location = location;
            Date = date;
            Seats = seats;
        }
        public string RequestId { get; }
        public string Name { get; }
        public double Duration { get; }
        public string Location { get; }
        public DateTime Date { get; }
        public List<SeatData> Seats { get; }
    }
}
