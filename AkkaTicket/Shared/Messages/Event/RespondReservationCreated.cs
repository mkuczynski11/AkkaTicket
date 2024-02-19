namespace AkkaTicket.Shared.Messages.Event
{
    public sealed class RespondReservationCreated
    {
        public RespondReservationCreated(string requestId, string reservationId, string eventId, string seatId, string userEmail)
        {
            RequestId = requestId;
            ReservationId = reservationId;
            EventId = eventId;
            SeatId = seatId;
            UserEmail = userEmail;
        }

        public string RequestId { get; }
        public string ReservationId { get; }
        public string EventId { get; }
        public string SeatId { get; }
        public string UserEmail { get; }
    }
}
