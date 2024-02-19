namespace AkkaTicket.DTO
{
    public sealed class EventSeatDTO
    {
        public EventSeatDTO(string id, double price)
        {
            Id = id;
            Price = price;
        }
        public string Id {  get; }
        public double Price { get; }
    }
}
