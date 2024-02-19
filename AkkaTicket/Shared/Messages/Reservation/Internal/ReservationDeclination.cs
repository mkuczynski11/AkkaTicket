namespace AkkaTicket.Shared.Messages.Reservation.Internal
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
