using Akka.Actor;
using Akka.Event;
using AkkaTicket.Shared.Messages.Reservation.Internal;
using AkkaTicket.Shared.Messages.User.In;
using AkkaTicket.Shared.Messages.User.Internal;
using AkkaTicket.Shared.Messages.User.Out;

namespace AkkaTicket.Actors
{
    public class UserManager: UntypedActor
    {
        private Dictionary<string, IActorRef> userEmailToActor = new();
        private Dictionary<IActorRef, string> actorToUserEmail = new();
        public UserManager() { }
        protected ILoggingAdapter Log { get; } = Context.GetLogger();
        protected override void PreStart() => Log.Info($"UserManager started");
        protected override void PostStop() => Log.Info($"UserManager stopped");

        protected override void OnReceive(object message)
        {
            switch (message)
            {
                case RequestCreateUser createUserMsg:
                    if (userEmailToActor.TryGetValue(createUserMsg.Email, out var actorRef))
                    {
                        Log.Warning($"User actor for {createUserMsg.Email} is already registered");
                        Sender.Tell(new RespondUserExists(createUserMsg.RequestId));
                        break;
                    }

                    Log.Info($"Creating User actor for {createUserMsg.Email}");
                    var userActor = Context.ActorOf(User.Props(createUserMsg.Email, createUserMsg.Name, createUserMsg.Surname), $"user-{createUserMsg.Email}");
                    Context.Watch(userActor);
                    userEmailToActor.Add(createUserMsg.Email, userActor);
                    actorToUserEmail.Add(userActor, createUserMsg.Email);
                    Sender.Tell(new RespondUserCreated(createUserMsg.RequestId, createUserMsg.Email));
                    break;
                case RequestReadUserData readUserDataMsg:
                    if (!userEmailToActor.TryGetValue(readUserDataMsg.Email, out actorRef))
                    {
                        Log.Warning($"User actor for {readUserDataMsg.Email} is not registered");
                        Sender.Tell(new RespondUserDoesNotExist(readUserDataMsg.RequestId));
                        break;
                    }

                    actorRef.Forward(readUserDataMsg);
                    break;
                case RequestChangeUser requestChangeUserMsg:
                    if (!userEmailToActor.TryGetValue(requestChangeUserMsg.Email, out actorRef))
                    {
                        Log.Warning($"User actor for {requestChangeUserMsg.Email} is not registered");
                        Sender.Tell(new RespondUserDoesNotExist(requestChangeUserMsg.RequestId));
                        break;
                    }

                    actorRef.Forward(requestChangeUserMsg);
                    break;
                case ReservationCreated reservationCreatedMsg:
                    userActor = userEmailToActor[reservationCreatedMsg.Email];
                    userActor.Forward(reservationCreatedMsg);
                    break;
                case ReadUserData readUserDataMsg:
                    if (!userEmailToActor.TryGetValue(readUserDataMsg.Email, out actorRef))
                    {
                        Log.Warning($"User actor for {readUserDataMsg.Email} is not registered");
                        Sender.Tell(new RespondUserDoesNotExist(readUserDataMsg.RequestId));
                        break;
                    }

                    actorRef.Forward(readUserDataMsg);
                    break;
                case Terminated t:
                    var userEmail = actorToUserEmail[t.ActorRef];
                    Log.Info($"User actor for {userEmail} has been terminated");
                    actorToUserEmail.Remove(t.ActorRef);
                    userEmailToActor.Remove(userEmail);
                    break;
            }
        }

        public static Props Props() => Akka.Actor.Props.Create<UserManager>();
    }
}
