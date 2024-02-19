namespace AkkaTicket.Shared.Messages.Event
{
    public sealed class ReservationDeclination
    {
        public ReservationDeclination(string requestId)
        {
            RequestId = requestId;
        }
        public string RequestId { get; }
    }
}
