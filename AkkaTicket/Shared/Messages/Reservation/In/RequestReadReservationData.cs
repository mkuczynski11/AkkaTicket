namespace AkkaTicket.Shared.Messages.Reservation.In
{
    public sealed class RequestReadReservationData
    {
        public RequestReadReservationData(string requestId, string reservationId)
        {
            RequestId = requestId;
            ReservationId = reservationId;
        }
        public string RequestId { get; }
        public string ReservationId { get; }
    }
}
