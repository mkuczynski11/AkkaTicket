using System.Xml.Linq;

namespace AkkaTicket.Shared.Messages.User
{
    public sealed class RespondUserCreated
    {
        public RespondUserCreated(string requestId) 
        {
            RequestId = requestId;
        }
        public string RequestId { get; }
    }
}
