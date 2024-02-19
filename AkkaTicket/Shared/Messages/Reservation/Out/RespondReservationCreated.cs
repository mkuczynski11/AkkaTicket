namespace AkkaTicket.Shared.Messages.Reservation.Out
{
    public sealed class RespondReservationCreated
    {
        public RespondReservationCreated(string requestId, string reservationId)
        {
            RequestId = requestId;
            ReservationId = reservationId;
        }

        public string RequestId { get; }
        public string ReservationId { get; }
    }
}
