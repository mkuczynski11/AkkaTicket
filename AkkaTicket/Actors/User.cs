using Akka.Actor;
using Akka.Event;
using AkkaTicket.Shared.Messages;
using AkkaTicket.Shared.Messages.Event;
using AkkaTicket.Shared.Messages.User;

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
                case ReadUserData read when read.Email.Equals(Email):
                    Sender.Tell(new RespondUserData(read.RequestId, Email, Name, Surname, reservationIdToRservationActor.Keys.ToList()));
                    break;
                case ReadUserData read:
                    Log.Warning($"Ignoring ReadUserData request for {read.Email}. This actor is responsible for {this.Email}");
                    break;
                case RequestChangeUser requestChangeUserMsg when requestChangeUserMsg.Email.Equals(this.Email):
                    this.Name = requestChangeUserMsg.Name;
                    this.Surname = requestChangeUserMsg.Surname;
                    Sender.Tell(new RespondUserData(requestChangeUserMsg.RequestId, Email, Name, Surname, reservationIdToRservationActor.Keys.ToList()));
                    break;
                case RespondReservationCreated reservationCreated:
                    reservationIdToRservationActor.Add(reservationCreated.ReservationId, Sender);
                    break;
                case ReservationCancelled reservationCancelledMsg:
                    if (reservationIdToRservationActor.ContainsKey(reservationCancelledMsg.ReservationId))
                    {
                        reservationIdToRservationActor.Remove(reservationCancelledMsg.ReservationId);
                    }
                    break;
            }
        }

        public static Props Props(string email, string name,string surname) => Akka.Actor.Props.Create(() => new  User(email, name, surname));
    }
}
