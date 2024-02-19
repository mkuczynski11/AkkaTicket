namespace AkkaTicket.Shared.Messages.Event
{
    public sealed class ReservationCancelled
    {
        public ReservationCancelled(string requestId, string reservationId, string email)
        {
            RequestId = requestId;
            ReservationId = reservationId;
            Email = email;
        }
        public string RequestId { get; }
        public string ReservationId { get; }
        public string Email { get; }
    }
}
