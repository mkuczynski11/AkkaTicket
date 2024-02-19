namespace AkkaTicket.Shared.Messages.Event
{
    public sealed class SeatData
    {
        public SeatData(double price)
        {
            Price = price;
        }
        public double Price { get; }
    }
}
