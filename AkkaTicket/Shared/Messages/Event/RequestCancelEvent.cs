using System.Xml.Linq;

namespace AkkaTicket.Shared.Messages.Event
{
    public sealed class RequestCancelEvent
    {
        public RequestCancelEvent(string requestId, string eventId)
        {
            RequestId = requestId;
            EventId = eventId;
        }
        public string RequestId { get; }
        public string EventId { get; }
    }
}
