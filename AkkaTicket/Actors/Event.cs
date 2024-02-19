using Akka.Actor;
using Akka.Event;
using Akka.Util.Internal;
using AkkaTicket.Shared.Messages.Event.In;
using AkkaTicket.Shared.Messages.Event.Internal;
using AkkaTicket.Shared.Messages.Event.Out;
using AkkaTicket.Shared.Messages.Reservation.Internal;

namespace AkkaTicket.Actors
{
    public class Seat
    {
        public Seat(string id, double price) 
        {
            Id = id;
            Price = price;
        }
        public string Id { get; set; }
        public double Price { get; set; }
    }
    public static class EventStates
    {
        public static readonly string ACTIVE = "ACTIVE";
        public static readonly string CANCELED = "CANCELED";
    }
    public class Event : UntypedActor
    {
        private string Id { get; set; }
        private string Name { get; set; }
        private double Duration { get; set; }
        private string Location { get; set; }
        private DateTime Date { get; set; }
        private string Status { get; set; }
        private List<Seat> _seatList = new();
        private Dictionary<string, IActorRef> seatIdToReservationActor = new();
        private Dictionary<IActorRef, string> reservationActorToSeatId = new();
        public Event(string id, string name, double duration, string location, DateTime date, List<CreateSeatData> seats)
        {
            Id = id;
            Name = name;
            Duration = duration;
            Location = location;
            Date = date;
            Status = EventStates.ACTIVE;
            seats.ForEach(seat => _seatList.Add(new Seat(Guid.NewGuid().ToString(), seat.Price)));
        }

        protected ILoggingAdapter Log { get; } = Context.GetLogger();

        protected override void PreStart()
        {
            Log.Info($"Event actor {Id}-{Name}-{Location}-{Date} started");
        }

        protected override void PostStop()
        {
            Log.Info($"Event actor {Id}-{Name}-{Location}-{Date} stopped");
        }

        protected override void OnReceive(object message)
        {
            switch (message)
            {
                case RequestReadEventData readMsg when readMsg.EventId.Equals(this.Id):
                    var availableSeats = _seatList.Where(seat => !seatIdToReservationActor.ContainsKey(seat.Id)).ToList();
                    Sender.Tell(new RespondEventData(readMsg.RequestId, Id, Name, Duration, Location, Date, Status, _seatList.Count, availableSeats.Count(), availableSeats));
                    break;
                case RequestReadEventData readMsg:
                    Log.Warning($"Ignoring ReadEventData request for {readMsg.EventId}. This actor is responsible for {this.Id}");
                    break;
                case RequestChangeEvent requestChangeEventMsg when requestChangeEventMsg.EventId.Equals(this.Id):
                    this.Name = requestChangeEventMsg.Name;
                    this.Duration = requestChangeEventMsg.Duration;
                    this.Location = requestChangeEventMsg.Location;
                    this.Date = requestChangeEventMsg.Date;
                    availableSeats = _seatList.Where(seat => !seatIdToReservationActor.ContainsKey(seat.Id)).ToList();
                    reservationActorToSeatId.Keys.ForEach(reservationActor => reservationActor.Tell(new EventChanged(requestChangeEventMsg.RequestId)));
                    Sender.Tell(new RespondEventData(requestChangeEventMsg.RequestId, Id, Name, Duration, Location, Date, Status, _seatList.Count, availableSeats.Count(), availableSeats));
                    break;
                case RequestCancelEvent requestCancelEventMsg when requestCancelEventMsg.EventId.Equals(this.Id):
                    this.Status = EventStates.CANCELED;
                    reservationActorToSeatId.Keys.ForEach(reservationActor => reservationActor.Tell(new EventCancelled(requestCancelEventMsg.RequestId)));
                    seatIdToReservationActor.Clear();
                    reservationActorToSeatId.Clear();
                    Sender.Tell(new RespondEventCancelled(requestCancelEventMsg.RequestId, Id));
                    break;
                case ReservationRequest reservationRequestMsg:
                    if (seatIdToReservationActor.ContainsKey(reservationRequestMsg.SeatId))
                    {
                        Sender.Tell(new ReservationDeclination(reservationRequestMsg.RequestId));
                    }
                    else
                    {
                        seatIdToReservationActor.Add(reservationRequestMsg.SeatId, reservationRequestMsg.ReservationActorRef);
                        reservationActorToSeatId.Add(reservationRequestMsg.ReservationActorRef, reservationRequestMsg.SeatId);
                        Context.Watch(reservationRequestMsg.ReservationActorRef);
                        Sender.Tell(new ReservationConfirmation(reservationRequestMsg.RequestId, reservationRequestMsg.SeatId));
                    }
                    break;
                case ReservationCancelled reservationCancelledMsg:
                    if(reservationActorToSeatId.ContainsKey(Sender))
                    {
                        var seatId = reservationActorToSeatId[Sender];
                        seatIdToReservationActor.Remove(seatId);
                        reservationActorToSeatId.Remove(Sender);
                    }
                    break;
            }
        }

        public static Props Props(string id, string name, double duration, string location, DateTime date, List<CreateSeatData> seats) => Akka.Actor.Props.Create(() => new Event(id, name, duration, location, date, seats));
    }
}
