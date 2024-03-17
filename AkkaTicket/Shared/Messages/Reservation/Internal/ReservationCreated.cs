namespace AkkaTicket.Shared.Messages.Reservation.Internal
{
    public sealed class ReservationCreated
    {
        public ReservationCreated(string requestId, string reservationId, string email)
        {
            EntityId = email;
            RequestId = requestId;
            ReservationId = reservationId;
            Email = email;
        }
        public string EntityId { get; }
        public string RequestId { get; }
        public string ReservationId { get; }
        public string Email { get; }
    }
}
