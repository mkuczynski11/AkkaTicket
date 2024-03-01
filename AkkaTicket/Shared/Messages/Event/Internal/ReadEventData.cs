namespace AkkaTicket.Shared.Messages.Event.Internal
{
    public sealed class ReadEventData
    {
        public ReadEventData(string requestId)
        {
            RequestId = requestId;
        }
        public string RequestId;
    }
}
