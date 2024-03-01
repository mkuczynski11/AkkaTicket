namespace AkkaTicket.Shared.Messages.Other
{
    public sealed class CollectionTimeout
    {
        public static CollectionTimeout Instance { get; } = new();
        private CollectionTimeout() { }
    }
}
