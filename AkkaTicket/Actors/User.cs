using Akka.Actor;
using Akka.Event;
using Akka.Persistence;
using AkkaTicket.Shared.Messages.Reservation.Internal;
using AkkaTicket.Shared.Messages.User.In;
using AkkaTicket.Shared.Messages.User.Internal;
using AkkaTicket.Shared.Messages.User.Out;

namespace AkkaTicket.Actors
{
    public class InitialUserInfo
    {
        public string Email;
        public string Name;
        public string Surname;
        public InitialUserInfo(string email, string name, string surname)
        {
            Email = email;
            Name = name;
            Surname = surname;
        }
    }
    public class UserInfoUpdate
    {
        public UserInfoUpdate(string name, string surname)
        {
            Name = name;
            Surname = surname;
        }
        public string Name;
        public string Surname;
    }
    public class UserState
    {
        public readonly string Email;
        public readonly string Name;
        public readonly string Surname;
        public UserState(string email, string name, string surname)
        {
            Email = email;
            Name = name;
            Surname = surname;
        }

        public UserState Updated(UserInfoUpdate evt)
        {
            return new UserState(Email, evt.Name, evt.Surname);
        }
        public UserState Updated(InitialUserInfo evt)
        {
            return new UserState(evt.Email, evt.Name, evt.Surname);
        }
    }
    public class User : UntypedPersistentActor
    {
        private UserState _state;
        private void UpdateState(UserInfoUpdate evt)
        {
            _state = _state.Updated(evt);
        }
        private void UpdateState(InitialUserInfo evt)
        {
            _state = _state.Updated(evt);
        }
        private Dictionary<string, IActorRef> reservationIdToRservationActor = new();
        private bool IsInitialized = false;

        public User(string email)
        {
            PersistenceId = $"user-{email}";
            _state = new UserState(email, "", "");
        }

        protected ILoggingAdapter Log { get; } = Context.GetLogger();

        protected override void PreStart()
        {
            Log.Info($"User actor {PersistenceId} started");
        }

        protected override void PostStop()
        {
            Log.Info($"User actor {PersistenceId} stopped");
        }

        protected override void OnRecover(object message)
        {
            switch (message)
            {
                case InitialUserInfo evt:
                    IsInitialized = true;
                    UpdateState(evt);
                    break;
                case UserInfoUpdate evt:
                    UpdateState(evt);
                    break;
                case SnapshotOffer snapshot when snapshot.Snapshot is UserState state:
                    _state = state;
                    break;
            }
        }

        protected override void OnCommand(object message)
        {
            switch (message)
            {
                case Initialize initializeMsg:
                    if (IsInitialized)
                    {
                        Sender.Tell(false);
                        break;
                    }
                    Persist(new InitialUserInfo(initializeMsg.EntityId, initializeMsg.Name, initializeMsg.Surname), UpdateState);
                    IsInitialized = true;
                    Sender.Tell(true);
                    break;
                case RequestReadUserData readMsg when readMsg.Email.Equals(_state.Email):
                    if (!IsInitialized)
                    {
                        Log.Warning($"User actor for {readMsg.Email} is not registered");
                        Sender.Tell(new RespondUserDoesNotExist(readMsg.RequestId));
                        break;
                    }
                    Sender.Tell(new RespondUserData(readMsg.RequestId, _state.Email, _state.Name, _state.Surname, reservationIdToRservationActor.Keys.ToList()));
                    break;
                case RequestReadUserData readMsg:
                    Log.Warning($"Ignoring ReadUserData request for {readMsg.Email}. This actor is responsible for {_state.Email}");
                    break;
                case RequestChangeUser requestChangeUserMsg when requestChangeUserMsg.Email.Equals(_state.Email):
                    if (!IsInitialized)
                    {
                        Log.Warning($"User actor for {requestChangeUserMsg.Email} is not registered");
                        Sender.Tell(new RespondUserDoesNotExist(requestChangeUserMsg.RequestId));
                        break;
                    }
                    Persist(new UserInfoUpdate(requestChangeUserMsg.Name, requestChangeUserMsg.Surname), UpdateState);
                    Sender.Tell(new RespondUserData(requestChangeUserMsg.RequestId, _state.Email, _state.Name, _state.Surname, reservationIdToRservationActor.Keys.ToList()));
                    break;
                case ReservationCreated reservationCreatedMsg:
                    if (!IsInitialized)
                    {
                        Log.Warning($"User actor for {reservationCreatedMsg.Email} is not registered");
                        Sender.Tell(new RespondUserDoesNotExist(reservationCreatedMsg.RequestId));
                        break;
                    }
                    reservationIdToRservationActor.Add(reservationCreatedMsg.ReservationId, Sender);
                    break;
                case ReadUserData readMsg when readMsg.Email.Equals(_state.Email):
                    if (!IsInitialized)
                    {
                        Log.Warning($"User actor for {readMsg.Email} is not registered");
                        Sender.Tell(new RespondUserDoesNotExist(readMsg.RequestId));
                        break;
                    }
                    Sender.Tell(new UserData(readMsg.RequestId, _state.Email));
                    break;
                case "snap":
                    SaveSnapshot(_state);
                    break;
            }
        }

        public override string PersistenceId { get; }
        public static Props Props(string email) => Akka.Actor.Props.Create(() => new User(email));
    }
}
