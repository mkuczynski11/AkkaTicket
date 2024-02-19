namespace AkkaTicket.Shared.Messages.Event
{
    public sealed class ReadReservationData
    {
        public ReadReservationData(string requestId, string reservationId)
        {
            RequestId = requestId;
            ReservationId = reservationId;
        }
        public string RequestId { get; }
        public string ReservationId { get; }
    }
}
