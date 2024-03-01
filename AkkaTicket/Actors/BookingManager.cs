using Akka.Actor;
using Akka.Event;
using AkkaTicket.Shared.Messages.Event.In;
using AkkaTicket.Shared.Messages.Event.Out;
using AkkaTicket.Shared.Messages.Reservation.In;
using AkkaTicket.Shared.Messages.Reservation.Out;

namespace AkkaTicket.Actors
{
    public class BookingManager : UntypedActor
    {
        private Dictionary<string, IActorRef> eventIdToActor = new();
        private Dictionary<IActorRef, string> actorToEventId= new();
        private Dictionary<string, IActorRef> reservationIdToActor = new();
        private Dictionary<IActorRef, string> actorToReservationId = new();

        public BookingManager() { }
        protected ILoggingAdapter Log { get; } = Context.GetLogger();
        protected override void PreStart() => Log.Info($"BookingManager started");
        protected override void PostStop() => Log.Info($"BookingManager stopped");

        protected override void OnReceive(object message)
        {
            switch (message)
            {
                case RequestCreateEvent requestCreateEventMsg:
                    Log.Info($"Creating Event actor for {requestCreateEventMsg.Name}");
                    var eventId = Guid.NewGuid().ToString();
                    var eventActor = Context.ActorOf(Event.Props(eventId, requestCreateEventMsg.Name, requestCreateEventMsg.Duration, requestCreateEventMsg.Location, requestCreateEventMsg.Date, requestCreateEventMsg.Seats), $"event-{eventId}");
                    Context.Watch(eventActor);
                    eventIdToActor.Add(eventId, eventActor);
                    actorToEventId.Add(eventActor, eventId);
                    Sender.Tell(new RespondEventCreated(requestCreateEventMsg.RequestId, eventId));
                    break;
                case RequestReadEvents requestReadEventsMsg:
                    Context.ActorOf(EventQuery.Props(new Dictionary<IActorRef, string>(actorToEventId), requestReadEventsMsg.RequestId, Sender, TimeSpan.FromSeconds(1), new EventQuery.Parameters(requestReadEventsMsg.Name)));
                    break;
                case RequestReadEventData readEventDataMsg:
                    if (!eventIdToActor.TryGetValue(readEventDataMsg.EventId, out var actorRef))
                    {
                        Log.Warning($"Event actor for {readEventDataMsg.EventId} is not created");
                        Sender.Tell(new RespondEventDoesNotExist(readEventDataMsg.RequestId));
                        break;
                    }

                    actorRef.Forward(readEventDataMsg);
                    break;
                case RequestChangeEvent requestChangeEventMsg:
                    if (!eventIdToActor.TryGetValue(requestChangeEventMsg.EventId, out actorRef))
                    {
                        Log.Warning($"Event actor for {requestChangeEventMsg.EventId} is not created");
                        Sender.Tell(new RespondEventDoesNotExist(requestChangeEventMsg.RequestId));
                        break;
                    }

                    actorRef.Forward(requestChangeEventMsg);
                    break;
                case RequestCancelEvent requestCancelEventMsg:
                    if (!eventIdToActor.TryGetValue(requestCancelEventMsg.EventId, out actorRef))
                    {
                        Log.Warning($"Event actor for {requestCancelEventMsg.EventId} is not created");
                        Sender.Tell(new RespondEventDoesNotExist(requestCancelEventMsg.RequestId));
                        break;
                    }

                    actorRef.Forward(requestCancelEventMsg);
                    break;
                case RequestReserveSeat reserveSeat:
                    if (!eventIdToActor.TryGetValue(reserveSeat.EventId, out var eventRef))
                    {
                        Log.Warning($"Event actor for {reserveSeat.EventId} is not created");
                        Sender.Tell(new RespondEventDoesNotExist(reserveSeat.RequestId));
                        break;
                    }

                    var reservationId = Guid.NewGuid().ToString();
                    var reservationActor = Context.ActorOf(Reservation.Props(reservationId, reserveSeat.EventId, eventRef), $"reservation-{reservationId}");
                    Context.Watch(reservationActor);
                    reservationIdToActor.Add(reservationId, reservationActor);
                    actorToReservationId.Add(reservationActor, reservationId);
                    reservationActor.Forward(reserveSeat);
                    break;
                case RequestReadReservationData readReservationDataMsg:
                    if (!reservationIdToActor.TryGetValue(readReservationDataMsg.ReservationId, out var reservationRef))
                    {
                        Log.Warning($"Reservation actor for {readReservationDataMsg.ReservationId} is not created");
                        Sender.Tell(new RespondReservationDoesNotExist(readReservationDataMsg.RequestId));
                        break;
                    }

                    reservationRef.Forward(readReservationDataMsg);
                    break;
                case RequestCancelReservation cancelReservationMsg:
                    if (!reservationIdToActor.TryGetValue(cancelReservationMsg.ReservationId, out reservationRef))
                    {
                        Log.Warning($"Reservation actor for {cancelReservationMsg.ReservationId} is not created");
                        Sender.Tell(new RespondReservationDoesNotExist(cancelReservationMsg.RequestId));
                        break;
                    }

                    reservationRef.Forward(cancelReservationMsg);
                    break;
                case Terminated t:
                    if (actorToEventId.ContainsKey(t.ActorRef))
                    {
                        eventId = actorToEventId[t.ActorRef];
                        Log.Info($"Event actor for {eventId} has been terminated");
                        actorToEventId.Remove(t.ActorRef);
                        eventIdToActor.Remove(eventId);
                    }
                    if (actorToReservationId.ContainsKey(t.ActorRef))
                    {
                        reservationId = actorToReservationId[t.ActorRef];
                        Log.Info($"Reservation actor for {reservationId} has been terminated");
                        actorToReservationId.Remove(t.ActorRef);
                        reservationIdToActor.Remove(reservationId);
                    }
                    break;
            }
        }

        public static Props Props() => Akka.Actor.Props.Create<BookingManager>();
    }
}
