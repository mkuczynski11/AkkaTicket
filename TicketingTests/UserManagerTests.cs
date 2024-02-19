using Akka.TestKit.Xunit2;
using AkkaTicket.Actors;
using AkkaTicket.Shared.Messages;
using FluentAssertions;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TicketingTests
{
    public class UserManagerTests: TestKit
    {
        [Fact]
        public void UserManager_actor_must_create_user_actor_if_there_is_not_one_existing()
        {
            var probe = CreateTestProbe();
            var userManagerActor = Sys.ActorOf(UserManager.Props());

            userManagerActor.Tell(new RequestCreateUser("123", "martin@gmail.com", "Martin", "Kuczynski"), probe.Ref);
            var response = probe.ExpectMsg<RespondUserCreated>();
            response.RequestId.Should().Be("123");
        }

        [Fact]
        public void UserManager_actor_must_raport_user_existance_if_there_is_one_existing()
        {
            var probe = CreateTestProbe();
            var userManagerActor = Sys.ActorOf(UserManager.Props());

            userManagerActor.Tell(new RequestCreateUser("123", "martin@gmail.com", "Martin", "Kuczynski"), probe.Ref);
            var firstResponse = probe.ExpectMsg<RespondUserCreated>();
            firstResponse.RequestId.Should().Be("123");

            userManagerActor.Tell(new RequestCreateUser("22", "martin@gmail.com", "Martin", "Kuczynski"), probe.Ref);
            var secondResponse= probe.ExpectMsg<RespondUserExists>();
            secondResponse.RequestId.Should().Be("22");
        }
        // TODO: Add test for one flow with actor created by the manager
    }
}
