namespace AkkaTicket.Shared.Messages.User.Internal
{
    public sealed class Initialize
    {
        public Initialize(string entityId, string name, string surname)
        {
            EntityId = entityId;
            Name = name;
            Surname = surname;
        }

        public string EntityId { get; }
        public string Name { get; }
        public string Surname { get; }
    }
}
