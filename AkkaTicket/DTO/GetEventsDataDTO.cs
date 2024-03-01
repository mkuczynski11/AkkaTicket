namespace AkkaTicket.DTO
{
    public sealed class GetEventsDataDTO
    {
        public GetEventsDataDTO(List<EventDTO> events) {
            Events = events;
        }
        public List<EventDTO> Events { get; set; }
        public class EventDTO
        {
            public EventDTO(string id, string name)
            {
                Id = id;
                Name = name;
            }

            public string Id { get; set; }
            public string Name { get; set;}
        }
    }
}
