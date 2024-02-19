using Akka.TestKit.Xunit2;
using AkkaTicket.Actors;
using AkkaTicket.Shared.Messages.Event.In;
using AkkaTicket.Shared.Messages.Event.Out;
using AkkaTicket.Shared.Messages.Reservation.In;
using AkkaTicket.Shared.Messages.Reservation.Out;
using AkkaTicket.Shared.Messages.User.In;
using AkkaTicket.Shared.Messages.User.Out;
using FluentAssertions;

namespace TicketingTests
{
    public class ReservationTests : TestKit
    {
        [Fact]
        public void Reservation_cancellation_should_propagate_changes_in_event_actor()
        {
            var probe = CreateTestProbe();
            var systemActor = Sys.ActorOf(TicketingSupervisor.Props());

            // create user
            systemActor.Tell(new RequestCreateUser("1", "martin@gmail.com", "Martin", "Kuczynski"), probe.Ref);
            var userCreationResponse = probe.ExpectMsg<RespondUserCreated>();

            // create event
            systemActor.Tell(new RequestCreateEvent("2", "MyEvent", 20_000, "Opera Baltycka", DateTime.Now, new List<CreateSeatData>() {
                new CreateSeatData(10),
                new CreateSeatData(20)
            }), probe.Ref);
            var eventCreationResponse = probe.ExpectMsg<RespondEventCreated>();

            // read event data
            systemActor.Tell(new RequestReadEventData("3", eventCreationResponse.EventId), probe.Ref);
            var eventDataResponse = probe.ExpectMsg<RespondEventData>();
            eventDataResponse.SeatsAmount.Should().Be(2);
            eventDataResponse.AvailableSeatsAmount.Should().Be(2);
            eventDataResponse.Status.Should().Be(EventStates.ACTIVE);

            // reserve seat
            systemActor.Tell(new RequestReserveSeat("4", eventDataResponse.Id, eventDataResponse.Seats[0].Id, userCreationResponse.UserEmail), probe.Ref);
            var reservationCreateResponse = probe.ExpectMsg<RespondReservationCreated>();

            // read reservation data
            systemActor.Tell(new RequestReadReservationData("5", reservationCreateResponse.ReservationId), probe.Ref);
            var reservationResponse = probe.ExpectMsg<RespondReservationData>();
            reservationResponse.EventId.Should().Be(eventDataResponse.Id);
            reservationResponse.SeatId.Should().Be(eventDataResponse.Seats[0].Id);
            reservationResponse.Status.Should().Be(ReservationStates.ACTIVE);

            // read updated event data
            systemActor.Tell(new RequestReadEventData("6", eventCreationResponse.EventId), probe.Ref);
            var updatedEventDataResponse = probe.ExpectMsg<RespondEventData>();
            updatedEventDataResponse.SeatsAmount.Should().Be(2);
            updatedEventDataResponse.AvailableSeatsAmount.Should().Be(1);
            updatedEventDataResponse.Status.Should().Be(EventStates.ACTIVE);

            // cancel reservation
            systemActor.Tell(new RequestCancelReservation("7", reservationResponse.ReservationId), probe.Ref);
            var reservationCancel = probe.ExpectMsg<RespondReservationCancelled>();

            // read updated event data
            systemActor.Tell(new RequestReadEventData("8", eventCreationResponse.EventId), probe.Ref);
            updatedEventDataResponse = probe.ExpectMsg<RespondEventData>();
            updatedEventDataResponse.SeatsAmount.Should().Be(2);
            updatedEventDataResponse.AvailableSeatsAmount.Should().Be(2);
            updatedEventDataResponse.Status.Should().Be(EventStates.ACTIVE);

            // read updated reservation data
            systemActor.Tell(new RequestReadReservationData("9", reservationCreateResponse.ReservationId), probe.Ref);
            var updatedReservationResponse = probe.ExpectMsg<RespondReservationData>();
            updatedReservationResponse.EventId.Should().Be(eventDataResponse.Id);
            updatedReservationResponse.SeatId.Should().Be(eventDataResponse.Seats[0].Id);
            updatedReservationResponse.Status.Should().Be(ReservationStates.CANCELED);
        }

        [Fact]
        public void Event_cancellation_should_propagate_changes_in_event_reservations()
        {
            var probe = CreateTestProbe();
            var systemActor = Sys.ActorOf(TicketingSupervisor.Props());

            // create user
            systemActor.Tell(new RequestCreateUser("1", "martin@gmail.com", "Martin", "Kuczynski"), probe.Ref);
            var userCreationResponse = probe.ExpectMsg<RespondUserCreated>();

            // create event
            systemActor.Tell(new RequestCreateEvent("2", "MyEvent", 20_000, "Opera Baltycka", DateTime.Now, new List<CreateSeatData>() {
                new CreateSeatData(10),
                new CreateSeatData(20)
            }), probe.Ref);
            var eventCreationResponse = probe.ExpectMsg<RespondEventCreated>();

            // read event data
            systemActor.Tell(new RequestReadEventData("3", eventCreationResponse.EventId), probe.Ref);
            var eventDataResponse = probe.ExpectMsg<RespondEventData>();
            eventDataResponse.SeatsAmount.Should().Be(2);
            eventDataResponse.AvailableSeatsAmount.Should().Be(2);
            eventDataResponse.Status.Should().Be(EventStates.ACTIVE);

            // reserve seat
            systemActor.Tell(new RequestReserveSeat("4", eventDataResponse.Id, eventDataResponse.Seats[0].Id, userCreationResponse.UserEmail), probe.Ref);
            var reservationCreateResponse = probe.ExpectMsg<RespondReservationCreated>();

            // read reservation data
            systemActor.Tell(new RequestReadReservationData("5", reservationCreateResponse.ReservationId), probe.Ref);
            var reservationResponse = probe.ExpectMsg<RespondReservationData>();
            reservationResponse.EventId.Should().Be(eventDataResponse.Id);
            reservationResponse.SeatId.Should().Be(eventDataResponse.Seats[0].Id);
            reservationResponse.Status.Should().Be(ReservationStates.ACTIVE);

            // read updated event data
            systemActor.Tell(new RequestReadEventData("6", eventCreationResponse.EventId), probe.Ref);
            var updatedEventDataResponse = probe.ExpectMsg<RespondEventData>();
            updatedEventDataResponse.SeatsAmount.Should().Be(2);
            updatedEventDataResponse.AvailableSeatsAmount.Should().Be(1);
            updatedEventDataResponse.Status.Should().Be(EventStates.ACTIVE);

            // cancel event
            systemActor.Tell(new RequestCancelEvent("7", eventDataResponse.Id), probe.Ref);
            var eventCancel = probe.ExpectMsg<RespondEventCancelled>();

            // read updated event data
            systemActor.Tell(new RequestReadEventData("8", eventCreationResponse.EventId), probe.Ref);
            updatedEventDataResponse = probe.ExpectMsg<RespondEventData>();
            updatedEventDataResponse.SeatsAmount.Should().Be(2);
            updatedEventDataResponse.AvailableSeatsAmount.Should().Be(2);
            updatedEventDataResponse.Status.Should().Be(EventStates.CANCELED);

            // read updated reservation data
            systemActor.Tell(new RequestReadReservationData("9", reservationCreateResponse.ReservationId), probe.Ref);
            var updatedReservationResponse = probe.ExpectMsg<RespondReservationData>();
            updatedReservationResponse.EventId.Should().Be(eventDataResponse.Id);
            updatedReservationResponse.SeatId.Should().Be(eventDataResponse.Seats[0].Id);
            updatedReservationResponse.Status.Should().Be(ReservationStates.CANCELED);
        }
    }
}
