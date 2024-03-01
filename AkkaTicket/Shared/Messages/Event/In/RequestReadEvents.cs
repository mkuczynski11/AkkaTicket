namespace AkkaTicket.Shared.Messages.Event.In
{
    public sealed class RequestReadEvents
    {
        public RequestReadEvents(string requestId, string name)
        {
            RequestId = requestId;
            Name = name;
        }
        public string RequestId { get; }
        public string Name { get; }
    }
}
