using Akka.Actor;
using Akka.Event;
using Akka.Util.Internal;
using AkkaTicket.Actors;
using AkkaTicket.Shared.Messages.Event.In;
using AkkaTicket.Shared.Messages.Event.Internal;
using AkkaTicket.Shared.Messages.Event.Out;
using AkkaTicket.Shared.Messages.Other;
using AkkaTicket.Shared.Messages.Reservation.Internal;

namespace AkkaTicket.Alternative.Actors
{
    public class Event : ReceiveActor
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
        private static int FetchSimulationDelayMs = 2000;
        private static double FetchSimulationProbability = 0.1f;
        public Event(string id, string name, double duration, string location, DateTime date, List<CreateSeatData> seats)
        {
            Id = id;
            Name = name;
            Duration = duration;
            Location = location;
            Date = date;
            Status = EventStates.ACTIVE;
            seats.ForEach(seat => _seatList.Add(new Seat(Guid.NewGuid().ToString(), seat.Price)));

            Receive<ReadEventData>(async message => {
                var availableSeats = _seatList.Where(seat => !seatIdToReservationActor.ContainsKey(seat.Id)).ToList();
                    var sender = Sender;
                    Random rnd = new Random();
                    if (rnd.NextDouble() < FetchSimulationProbability)
                    {
                        await Task.Delay(FetchSimulationDelayMs);
                    }
                    sender.Tell(new EventData(message.RequestId, Id, Name, Duration, Location, Date, Status, _seatList.Count, availableSeats.Count(), availableSeats));
            });
            Receive<RequestReadEventData>(async message => {
                var availableSeats = _seatList.Where(seat => !seatIdToReservationActor.ContainsKey(seat.Id)).ToList();
                    var cheapestSeat = _seatList.Min(seat => seat.Price);
                    var router = Context.System.ActorSelection("/user/currencyExchangeRouter");
                    var sender = Sender;
                    cheapestSeat = await router.Ask<double>(new ExchangeCurrency(message.Currency, cheapestSeat));
                    sender.Tell(new RespondEventData(message.RequestId, Id, Name, Duration, Location, Date, Status, _seatList.Count, availableSeats.Count(), availableSeats, cheapestSeat));
            });
            Receive<RequestChangeEvent>(async message => {
                this.Name = message.Name;
                this.Duration = message.Duration;
                this.Location = message.Location;
                this.Date = message.Date;
                var availableSeats = _seatList.Where(seat => !seatIdToReservationActor.ContainsKey(seat.Id)).ToList();
                var cheapestSeat = _seatList.Min(seat => seat.Price);
                reservationActorToSeatId.Keys.ForEach(reservationActor => reservationActor.Tell(new EventChanged(message.RequestId)));
                Sender.Tell(new RespondEventData(message.RequestId, Id, Name, Duration, Location, Date, Status, _seatList.Count, availableSeats.Count(), availableSeats, cheapestSeat));
            });
            Receive<RequestCancelEvent>(async message => {
                var availableSeats = _seatList.Where(seat => !seatIdToReservationActor.ContainsKey(seat.Id)).ToList();
                    this.Status = EventStates.CANCELED;
                    reservationActorToSeatId.Keys.ForEach(reservationActor => reservationActor.Tell(new EventCancelled(message.RequestId)));
                    seatIdToReservationActor.Clear();
                    reservationActorToSeatId.Clear();
                    Sender.Tell(new RespondEventCancelled(message.RequestId, Id));
            });
            Receive<ReservationRequest>(async message => {
                if (seatIdToReservationActor.ContainsKey(message.SeatId))
                {
                    Sender.Tell(new ReservationDeclination(message.RequestId));
                }
                else
                {
                    seatIdToReservationActor.Add(message.SeatId, message.ReservationActorRef);
                    reservationActorToSeatId.Add(message.ReservationActorRef, message.SeatId);
                    Context.Watch(message.ReservationActorRef);
                    Sender.Tell(new ReservationConfirmation(message.RequestId, message.SeatId));
                }
            });
            Receive<ReservationCancelled>(async message => {
                if(reservationActorToSeatId.ContainsKey(Sender))
                {
                    var seatId = reservationActorToSeatId[Sender];
                    seatIdToReservationActor.Remove(seatId);
                    reservationActorToSeatId.Remove(Sender);
                }
            });
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

        public static Props Props(string id, string name, double duration, string location, DateTime date, List<CreateSeatData> seats) => Akka.Actor.Props.Create(() => new Event(id, name, duration, location, date, seats));
    }
}
