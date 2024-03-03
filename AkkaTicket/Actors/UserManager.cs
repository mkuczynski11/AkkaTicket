using Akka.Actor;
using Akka.Event;
using Akka.Persistence.Journal;
using Akka.Persistence.Query;
using Akka.Persistence.Query.Sql;
using Akka.Persistence.Sql.Common.Journal;
using Akka.Streams;
using Akka.Streams.Dsl;
using AkkaTicket.Shared.Messages.Reservation.Internal;
using AkkaTicket.Shared.Messages.User.In;
using AkkaTicket.Shared.Messages.User.Internal;
using AkkaTicket.Shared.Messages.User.Out;

namespace AkkaTicket.Actors
{
    public class UserManager : UntypedActor
    {
        private Dictionary<string, IActorRef> userEmailToActor = new();
        private Dictionary<IActorRef, string> actorToUserEmail = new();
        public UserManager()
        {
            var queries = PersistenceQuery.Get(Context.System).ReadJournalFor<SqlReadJournal>(SqlReadJournal.Identifier);
            var source = queries.PersistenceIds();
            var mat = ActorMaterializer.Create(Context.System);
            source.RunForeach(id =>
            {
                Log.Info($"id:{id}");
                var email = id.Replace("user-", "");
                Log.Info($"email:{email}");
                var userActor = Context.ActorOf(User.Props(email), id);
                Context.Watch(userActor);
                userEmailToActor.Add(email, userActor);
                actorToUserEmail.Add(userActor, email);
                userActor.Tell(new Restore());
            }, mat);
        }
        protected ILoggingAdapter Log { get; } = Context.GetLogger();
        protected override void PreStart() {
            Log.Info($"UserManager started");
        }
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
                    userActor.Tell("initState");
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
                case Register registerMsg:
                    userEmailToActor.Add(registerMsg.Email, registerMsg.ActorRef);
                    actorToUserEmail.Add(registerMsg.ActorRef, registerMsg.Email);
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
