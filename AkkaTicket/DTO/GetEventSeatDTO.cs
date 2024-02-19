namespace AkkaTicket.DTO
{
    public sealed class GetEventSeatDTO
    {
        public GetEventSeatDTO(string id, double price)
        {
            Id = id;
            Price = price;
        }
        public string Id {  get; }
        public double Price { get; }
    }
}
