using Akka.Actor;
using Akka.Cluster.Sharding;
using Akka.Event;
using AkkaTicket.Shared.Messages.Reservation.Internal;
using AkkaTicket.Shared.Messages.User.In;
using AkkaTicket.Shared.Messages.User.Internal;
using AkkaTicket.Shared.Messages.User.Out;

namespace AkkaTicket.Actors
{
    public class UserManager : UntypedActor
    {
        private IActorRef _shardRegion;
        public UserManager(IActorRef shardRegion)
        {
            _shardRegion = shardRegion;
        }
        protected ILoggingAdapter Log { get; } = Context.GetLogger();
        protected override void PreStart() {
            Log.Info($"UserManager started");
        }
        protected override void PostStop() => Log.Info($"UserManager stopped");

        protected override async void OnReceive(object message)
        {
            switch (message)
            {
                case RequestCreateUser createUserMsg:
                    Log.Info($"Creating User actor for {createUserMsg.Email}");
                    _shardRegion.Tell(new ShardRegion.StartEntity(createUserMsg.Email));
                    var sender = Sender;
                    var initializeSuccess = await _shardRegion.Ask<bool>(new Initialize(createUserMsg.Email, createUserMsg.Name, createUserMsg.Surname));
                    if (!initializeSuccess)
                    {
                        Log.Warning($"User actor for {createUserMsg.Email} is already registered");
                        sender.Tell(new RespondUserExists(createUserMsg.RequestId));
                        break;
                    }
                    sender.Tell(new RespondUserCreated(createUserMsg.RequestId, createUserMsg.Email));
                    break;
                case RequestReadUserData readUserDataMsg:
                    _shardRegion.Forward(readUserDataMsg);
                    break;
                case RequestChangeUser requestChangeUserMsg:
                    _shardRegion.Forward(requestChangeUserMsg);
                    break;
                case ReservationCreated reservationCreatedMsg:
                    _shardRegion.Forward(reservationCreatedMsg);
                    break;
                case ReadUserData readUserDataMsg:
                    _shardRegion.Forward(readUserDataMsg);
                    break;
            }
        }

        public static Props Props(IActorRef shardRegion) => Akka.Actor.Props.Create<UserManager>(() => new UserManager(shardRegion));
    }
}
