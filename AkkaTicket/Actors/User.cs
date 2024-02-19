using Akka.Actor;
using Akka.Event;
using AkkaTicket.Shared.Messages.Reservation.Internal;
using AkkaTicket.Shared.Messages.User.In;
using AkkaTicket.Shared.Messages.User.Internal;
using AkkaTicket.Shared.Messages.User.Out;

namespace AkkaTicket.Actors
{
    public class User : UntypedActor
    {
        private string Email { get; set; }
        private string Name { get; set; }
        private string Surname { get; set; }
        private Dictionary<string, IActorRef> reservationIdToRservationActor = new();

        public User(string email, string name, string surname) 
        {
            Email = email;
            Name = name;
            Surname = surname;
        }

        protected ILoggingAdapter Log { get; } = Context.GetLogger();

        protected override void PreStart()
        {
            Log.Info($"User actor {Email}-{Name}-{Surname} started");
        }

        protected override void PostStop()
        {
            Log.Info($"User actor {Email}-{Name}-{Surname} stopped");
        }

        protected override void OnReceive(object message)
        {
            switch (message) 
            {
                case RequestReadUserData readMsg when readMsg.Email.Equals(Email):
                    Sender.Tell(new RespondUserData(readMsg.RequestId, Email, Name, Surname, reservationIdToRservationActor.Keys.ToList()));
                    break;
                case RequestReadUserData readMsg:
                    Log.Warning($"Ignoring ReadUserData request for {readMsg.Email}. This actor is responsible for {this.Email}");
                    break;
                case RequestChangeUser requestChangeUserMsg when requestChangeUserMsg.Email.Equals(this.Email):
                    this.Name = requestChangeUserMsg.Name;
                    this.Surname = requestChangeUserMsg.Surname;
                    Sender.Tell(new RespondUserData(requestChangeUserMsg.RequestId, Email, Name, Surname, reservationIdToRservationActor.Keys.ToList()));
                    break;
                case ReservationCreated reservationCreatedMsg:
                    reservationIdToRservationActor.Add(reservationCreatedMsg.ReservationId, Sender);
                    break;
                case ReservationCancelled reservationCancelledMsg:
                    if (reservationIdToRservationActor.ContainsKey(reservationCancelledMsg.ReservationId))
                    {
                        reservationIdToRservationActor.Remove(reservationCancelledMsg.ReservationId);
                    }
                    break;
                case ReadUserData readMsg when readMsg.Email.Equals(Email):
                    Sender.Tell(new UserData(readMsg.RequestId, Email));
                    break;
            }
        }

        public static Props Props(string email, string name,string surname) => Akka.Actor.Props.Create(() => new  User(email, name, surname));
    }
}
