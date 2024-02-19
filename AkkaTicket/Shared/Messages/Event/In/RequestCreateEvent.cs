namespace AkkaTicket.Shared.Messages.Event.In
{
    public sealed class RequestCreateEvent
    {
        public RequestCreateEvent(string requestId, string name, double duration, string location, DateTime date, List<CreateSeatData> seats)
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
        public List<CreateSeatData> Seats { get; }
    }
}
