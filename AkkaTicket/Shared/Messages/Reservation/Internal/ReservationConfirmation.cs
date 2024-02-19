namespace AkkaTicket.Shared.Messages.Reservation.Internal
{
    public sealed class ReservationConfirmation
    {
        public ReservationConfirmation(string requestId, string seatId)
        {
            RequestId = requestId;
            SeatId = seatId;
        }
        public string RequestId { get; }
        public string SeatId { get; }
    }
}
