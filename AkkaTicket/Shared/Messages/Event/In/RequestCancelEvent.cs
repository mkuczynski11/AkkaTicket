using System.Xml.Linq;

namespace AkkaTicket.Shared.Messages.Event.In
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
