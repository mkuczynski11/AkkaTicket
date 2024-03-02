using AkkaTicket.Connectors;
using AkkaTicket.DTO;
using Microsoft.AspNetCore.Http.HttpResults;
using Microsoft.AspNetCore.Mvc;
using AkkaTicket.Shared.Messages.User.Out;
using AkkaTicket.Shared.Messages.Reservation.Out;
using AkkaTicket.Shared.Messages.Reservation.In;
using AkkaTicket.Shared.Messages.Reservation.Internal;
using AkkaTicket.Shared.Messages.Event.Out;
using AkkaTicket.Shared.Messages.Event.In;
using AkkaTicket.Shared.Messages.User.In;
using System.Xml.Linq;

namespace AkkaTicket.Controllers
{
    [Route("/api")]
    [ApiController]
    public class ApiController
    {
        private readonly ILogger<ApiController> _logger;
        private readonly IActorBridge _bridge;

        public ApiController(ILogger<ApiController> logger, IActorBridge bridge)
        {
            _logger = logger;
            _bridge = bridge;
        }

        [HttpGet("users/{email}")]
        public async Task<Results<NotFound<string>, Ok<GetUserDataDTO>>> GetUserData(string email)
        {
            var response = await _bridge.Ask<object>(new RequestReadUserData(Guid.NewGuid().ToString(), email));
            if (response is RespondUserDoesNotExist)
            {
                return TypedResults.NotFound("User does not exist");
            }
            RespondUserData dataResponse = (RespondUserData) response;
            return TypedResults.Ok(new GetUserDataDTO(dataResponse.Email, dataResponse.Name, dataResponse.Surname, dataResponse.Reservations));
        }

        [HttpPost("users")]
        public async Task<Results<BadRequest<string>, Created>> CreateUser([FromBody] CreateUserDTO createUserRequest)
        {
            var response = await _bridge.Ask<object>(new RequestCreateUser(Guid.NewGuid().ToString(), createUserRequest.Email, createUserRequest.Name, createUserRequest.Surname));
            if (response is RespondUserExists)
            {
                return TypedResults.BadRequest("User already exists");
            }
            RespondUserCreated dataResponse = (RespondUserCreated) response;
            return TypedResults.Created(dataResponse.UserEmail);
        }

        [HttpPut("users/{email}")]
        public async Task<Results<NotFound<string>, Ok>> ChangeUser(string email, [FromBody] UpdateUserDTO updateUserRequest)
        {
            var response = await _bridge.Ask<object>(new RequestChangeUser(Guid.NewGuid().ToString(), email, updateUserRequest.Name, updateUserRequest.Surname));
            if (response is RespondUserDoesNotExist)
            {
                return TypedResults.NotFound("User does not exist");
            }
            return TypedResults.Ok();
        }

        [HttpGet("events/{id}")]
        public async Task<Results<NotFound<string>, Ok<GetEventDataDTO>>> GetEvent(string id)
        {
            var response = await _bridge.Ask<object>(new RequestReadEventData(Guid.NewGuid().ToString(), id));
            if (response is RespondEventDoesNotExist)
            {
                return TypedResults.NotFound("User does not exist");
            }
            RespondEventData dataResponse = (RespondEventData)response;
            var seatsData = dataResponse.Seats.Select(seat => new GetEventSeatDTO(seat.Id, seat.Price)).ToList();
            return TypedResults.Ok(new GetEventDataDTO(dataResponse.Id, dataResponse.Name, dataResponse.Duration, dataResponse.Location, dataResponse.Date, dataResponse.Status, dataResponse.SeatsAmount, dataResponse.AvailableSeatsAmount, seatsData));
        }

        [HttpPost("events")]
        public async Task<Created> CreateEvent([FromBody] CreateEventDTO createEventRequest)
        {
            List<CreateSeatData> seats = createEventRequest.Seats.Select(seat => new CreateSeatData(seat.Price)).ToList();
            RespondEventCreated response = await _bridge.Ask<RespondEventCreated>(new RequestCreateEvent(Guid.NewGuid().ToString(), createEventRequest.Name, createEventRequest.Duration, createEventRequest.Location, createEventRequest.Date, seats));

            return TypedResults.Created(response.EventId);
        }

        [HttpDelete("events/{id}")]
        public async Task<Results<NotFound<string>, NoContent>> CancelEvent(string id)
        {
            var response = await _bridge.Ask<object>(new RequestCancelEvent(Guid.NewGuid().ToString(), id));
            if (response is RespondEventDoesNotExist)
            {
                return TypedResults.NotFound("Event does not exist");
            }
            return TypedResults.NoContent();
        }

        [HttpPut("events/{id}")]
        public async Task<Results<NotFound<string>, Ok>> ChangeEvent(string id, [FromBody] UpdateEventDTO updateEventRequest)
        {
            var response = await _bridge.Ask<object>(new RequestChangeEvent(Guid.NewGuid().ToString(), id, updateEventRequest.Name, updateEventRequest.Duration, updateEventRequest.Location, updateEventRequest.Date));
            if (response is RespondEventDoesNotExist)
            {
                return TypedResults.NotFound("Event does not exist");
            }
            return TypedResults.Ok();
        }

        [HttpGet("events")]
        public async Task<Ok<GetEventsDataDTO>> GetEvents(string? name)
        {
            RespondEventsData response = await _bridge.Ask<RespondEventsData>(new RequestReadEvents(Guid.NewGuid().ToString(), name));
            List<GetEventsDataDTO.EventDTO> events = response.Events.Select(x => new GetEventsDataDTO.EventDTO(x.Id, x.Name)).ToList();
            return TypedResults.Ok(new GetEventsDataDTO(events));
        }

        [HttpPost("events/{eventId}/seats/{seatId}")]
        public async Task<Results<NotFound<string>, BadRequest<string>, Created>> ReserveSeat([FromBody] CreateReservationDTO createReservationRequest, string eventId, string seatId)
        {
            var response = await _bridge.Ask<object>(new RequestReserveSeat(Guid.NewGuid().ToString(), eventId, seatId, createReservationRequest.Email));
            if (response is RespondEventDoesNotExist)
            {
                return TypedResults.NotFound("Event does not exist");
            }
            if (response is RespondSeatDoesNotExist)
            {
                return TypedResults.NotFound("Seat does not exist");
            }
            if (response is RespondUserDoesNotExist)
            {
                return TypedResults.NotFound("User does not exist");
            }
            if (response is ReservationDeclination)
            {
                return TypedResults.BadRequest("Seat is already reserved");
            }
            RespondReservationCreated reservationCreatedResponse = (RespondReservationCreated)response;
            return TypedResults.Created(reservationCreatedResponse.ReservationId);
        }

        [HttpDelete("reservations/{id}")]
        public async Task<Results<NotFound<string>, NoContent>> CancelReservation(string id)
        {
            var response = await _bridge.Ask<object>(new RequestCancelReservation(Guid.NewGuid().ToString(), id));
            if (response is RespondReservationDoesNotExist)
            {
                return TypedResults.NotFound("Reservation does not exist");
            }
            return TypedResults.NoContent();
        }

        [HttpGet("reservations/{id}")]
        public async Task<Results<NotFound<string>, Ok<GetReservationDataDTO>>> GetReservation(string id)
        {
            var response = await _bridge.Ask<object>(new RequestReadReservationData(Guid.NewGuid().ToString(), id));
            if (response is RespondReservationDoesNotExist)
            {
                return TypedResults.NotFound("Reservation does not exist");
            }
            RespondReservationData dataResponse = (RespondReservationData)response;
            return TypedResults.Ok(new GetReservationDataDTO(dataResponse.ReservationId, dataResponse.Status, dataResponse.EventId, dataResponse.SeatId));
        }
    }
    //Start postgres command
    //docker run -p 5432:5432 --name container-postgresdb -e POSTGRES_PASSWORD = admin - d postgres
    //docker run -p 5050:80 -e "PGADMIN_DEFAULT_EMAIL=admin@example.com" -e "PGADMIN_DEFAULT_PASSWORD=admin" -d dpage/pgadmin4
}
