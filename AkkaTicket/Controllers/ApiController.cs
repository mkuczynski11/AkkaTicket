using AkkaTicket.Connectors;
using AkkaTicket.DTO;
using AkkaTicket.Shared.Messages.User;
using AkkaTicket.Shared.Messages.Event;
using Microsoft.AspNetCore.Http.HttpResults;
using Microsoft.AspNetCore.Mvc;

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
        public async Task<Results<NotFound<string>, Ok<UserDataDTO>>> GetUserData(string email)
        {
            var response = await _bridge.Ask<object>(new ReadUserData(Guid.NewGuid().ToString(), email));
            if (response is RespondUserDoesNotExist)
            {
                return TypedResults.NotFound("User does not exist");
            }
            RespondUserData dataResponse = (RespondUserData) response;
            return TypedResults.Ok(new UserDataDTO(dataResponse.Email, dataResponse.Name, dataResponse.Surname, dataResponse.Reservations));
        }

        [HttpPost("users")]
        public async Task<Results<BadRequest<string>, Created>> CreateUser([FromBody] CreateUserDTO createUserRequest)
        {
            var response = await _bridge.Ask<object>(new RequestCreateUser(Guid.NewGuid().ToString(), createUserRequest.Email, createUserRequest.Name, createUserRequest.Surname));
            if (response is RespondUserExists)
            {
                return TypedResults.BadRequest("User already exists");
            }

            return TypedResults.Created(createUserRequest.Email);
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
        public async Task<Results<NotFound<string>, Ok<EventDataDTO>>> GetEvent(string id)
        {
            var response = await _bridge.Ask<object>(new ReadEventData(Guid.NewGuid().ToString(), id));
            if (response is RespondEventDoesNotExist)
            {
                return TypedResults.NotFound("User does not exist");
            }
            RespondEventData dataResponse = (RespondEventData)response;
            var seatsData = dataResponse.Seats.Select(seat => new EventSeatDTO(seat.Id, seat.Price)).ToList();
            return TypedResults.Ok(new EventDataDTO(dataResponse.Id, dataResponse.Name, dataResponse.Duration, dataResponse.Location, dataResponse.Date, dataResponse.SeatsAmount, dataResponse.AvailableSeatsAmount, seatsData));
        }

        [HttpPost("events")]
        public async Task<Created> CreateEvent([FromBody] CreateEventDTO createEventRequest)
        {
            List<SeatData> seats = createEventRequest.Seats.Select(seat => new SeatData(seat.Price)).ToList();
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

        //public _ GetEvents()
        //{

        //}

        [HttpPost("events/{eventId}/seats/{seatId}")]
        public async Task<Results<NotFound<string>, BadRequest<string>, Created>> ReserveSeat([FromBody] CreateReservationDTO createReservationRequest, string eventId, string seatId)
        {
            var response = await _bridge.Ask<object>(new ReserveSeat(Guid.NewGuid().ToString(), eventId, seatId, createReservationRequest.Email));
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
            var response = await _bridge.Ask<object>(new CancelReservation(Guid.NewGuid().ToString(), id));
            if (response is RespondReservationDoesNotExist)
            {
                return TypedResults.NotFound("Reservation does not exist");
            }
            return TypedResults.NoContent();
        }

        [HttpGet("reservations/{id}")]
        public async Task<Results<NotFound<string>, Ok<ReservationDataDTO>>> GetReservation(string id)
        {
            var response = await _bridge.Ask<object>(new ReadReservationData(Guid.NewGuid().ToString(), id));
            if (response is RespondReservationDoesNotExist)
            {
                return TypedResults.NotFound("Reservation does not exist");
            }
            RespondReservationData dataResponse = (RespondReservationData)response;
            return TypedResults.Ok(new ReservationDataDTO(dataResponse.ReservationId, dataResponse.Status, dataResponse.EventId, dataResponse.SeatId));
        }
    }
}
