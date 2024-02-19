namespace AkkaTicket.Shared.Messages.Event
{
    public sealed class ReserveSeat
    {
        public ReserveSeat(string requestId, string eventId, string seatId, string userEmail) 
        {
            RequestId = requestId;
            EventId = eventId;
            SeatId = seatId;
            UserEmail = userEmail;
        }
        public string RequestId { get; }
        public string EventId { get; }
        public string SeatId { get; }
        public string UserEmail { get; }
    }
}
