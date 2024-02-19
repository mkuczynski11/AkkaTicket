using System.Xml.Linq;

namespace AkkaTicket.Shared.Messages.User.Out
{
    public sealed class RespondUserCreated
    {
        public RespondUserCreated(string requestId, string userEmail)
        {
            RequestId = requestId;
            UserEmail = userEmail;
        }
        public string RequestId { get; }
        public string UserEmail { get; }
    }
}
