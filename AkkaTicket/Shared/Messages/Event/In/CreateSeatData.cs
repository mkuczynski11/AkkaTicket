namespace AkkaTicket.Shared.Messages.Event.In
{
    public sealed class CreateSeatData
    {
        public CreateSeatData(double price)
        {
            Price = price;
        }
        public double Price { get; }
    }
}
