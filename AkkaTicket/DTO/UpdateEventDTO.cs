namespace AkkaTicket.DTO
{
    public sealed class UpdateEventDTO
    {
        public UpdateEventDTO(string name, double duration, string location, DateTime date)
        {
            Name = name;
            Duration = duration;
            Location = location;
            Date = date;
        }
        public string Name { get; }
        public double Duration { get; }
        public string Location { get; }
        public DateTime Date { get; }
    }
}
