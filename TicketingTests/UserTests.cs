using Akka.TestKit;
using Akka.TestKit.Xunit2;
using AkkaTicket.Actors;
using AkkaTicket.Shared.Messages;
using AkkaTicket.Shared.Messages.User.In;
using AkkaTicket.Shared.Messages.User.Out;
using FluentAssertions;

namespace TicketingTests
{
    public class UserTests : TestKit
    {
        [Fact]
        public void User_actor_must_reply_with_its_data()
        {
            var probe = this.CreateTestProbe();
            var userActor = Sys.ActorOf(User.Props("martin@gmail.com", "Martin", "Kuczynski"));

            userActor.Tell(new RequestReadUserData("123", "martin@gmail.com"), probe.Ref);
            var response = probe.ExpectMsg<RespondUserData>();
            response.RequestId.Should().Be("123");
            response.Email.Should().Be("martin@gmail.com");
            response.Name.Should().Be("Martin");
            response.Surname.Should().Be("Kuczynski");
        }

        [Fact]
        public void User_actor_must_ignore_wrong_read_requests()
        {
            var probe = this.CreateTestProbe();
            var userActor = Sys.ActorOf(User.Props("martin@gmail.com", "Martin", "Kuczynski"));

            userActor.Tell(new RequestReadUserData("123", "other@gmail.com"), probe.Ref);
            probe.ExpectNoMsg(TimeSpan.FromMilliseconds(500));
        }
    }
}