namespace AkkaTicket.Shared.Messages.Reservation.Out
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
