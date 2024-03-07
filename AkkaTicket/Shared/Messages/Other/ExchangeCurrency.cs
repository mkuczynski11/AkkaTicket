namespace AkkaTicket.Shared.Messages.Other
{
    public sealed class ExchangeCurrency
    {
        public ExchangeCurrency(string currency, double amount)
        {
            Currency = currency;
            Amount = amount;
        }
        public string Currency { get; }
        public double Amount { get; }
    }
}
