using Akka.Actor;

namespace AkkaTicket.Shared.Messages.Reservation.Internal
{
    public sealed class ReservationRequest
    {
        public ReservationRequest(string requestId, string seatId, IActorRef reservationActorRef)
        {
            RequestId = requestId;
            SeatId = seatId;
            ReservationActorRef = reservationActorRef;
        }
        public string RequestId { get; }
        public string SeatId { get; }
        public IActorRef ReservationActorRef { get; }
    }
}
