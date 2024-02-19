namespace AkkaTicket.Shared.Messages.Event
{
    public sealed class RespondReservationDoesNotExist
    {
        public RespondReservationDoesNotExist(string requestId) 
        {
            RequestId = requestId;
        }
        public string RequestId { get; }
    }
}
