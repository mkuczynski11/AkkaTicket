using Akka.Actor;

namespace AkkaTicket.Shared.Messages.User.Internal
{
    public sealed class Register
    {
        public Register(IActorRef actor, string email)
        {
            ActorRef = actor;
            Email = email;
        }
        public IActorRef ActorRef;
        public string Email;
    }
}
