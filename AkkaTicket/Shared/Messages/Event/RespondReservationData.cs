namespace AkkaTicket.Shared.Messages.Event
{
    public sealed class RespondReservationData
    {
        public RespondReservationData(string requestId, string reservationId, string status, string eventId, string seatId)
        {
            RequestId = requestId;
            ReservationId = reservationId;
            Status = status;
            EventId = eventId;
            SeatId = seatId;
        }
        public string RequestId { get; }
        public string ReservationId { get; }
        public string Status { get; }
        public string EventId { get; }
        public string SeatId { get; }
    }
}
