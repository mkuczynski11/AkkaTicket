using Akka.Actor;
using Akka.Event;
using AkkaTicket.Shared.Messages;
using AkkaTicket.Shared.Messages.Event;
using AkkaTicket.Shared.Messages.User;

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
                case ReadUserData readUserDataMsg:
                    if (!userEmailToActor.TryGetValue(readUserDataMsg.Email, out var actorRef))
                    {
                        Log.Warning($"User actor for {readUserDataMsg.Email} is not registered");
                        Sender.Tell(new RespondUserDoesNotExist(readUserDataMsg.RequestId));
                        break;
                    }

                    actorRef.Forward(readUserDataMsg);
                    break;
                case RequestCreateUser createUserMsg:
                    if (userEmailToActor.TryGetValue(createUserMsg.Email, out actorRef))
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
                    Sender.Tell(new RespondUserCreated(createUserMsg.RequestId));
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
                case RespondReservationCreated reservationCreated:
                    userActor = userEmailToActor[reservationCreated.UserEmail];
                    userActor.Forward(reservationCreated);
                    break;
                case ReservationCancelled reservationCancelledMsg:
                    userActor = userEmailToActor[reservationCancelledMsg.Email];
                    userActor.Forward(reservationCancelledMsg);
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
