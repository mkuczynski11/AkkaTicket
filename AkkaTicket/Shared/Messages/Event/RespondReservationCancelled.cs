namespace AkkaTicket.Shared.Messages.Event
{
    public sealed class RespondReservationCancelled
    {
        public RespondReservationCancelled(string requestId)
        {
            RequestId = requestId;
        }

        public string RequestId { get; }
    }
}
