namespace AkkaTicket.Shared.Messages.Event
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
