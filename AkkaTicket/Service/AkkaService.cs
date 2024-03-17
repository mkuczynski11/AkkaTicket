using Akka.Actor;
using Akka.Cluster.Routing;
using Akka.Cluster.Sharding;
using Akka.Configuration;
using Akka.DependencyInjection;
using Akka.Routing;
using AkkaTicket.Actors;
using AkkaTicket.Connectors;

namespace AkkaTicket.Service
{
    public class AkkaService: IHostedService, IActorBridge
    {
        private ActorSystem _actorSystem;
        private readonly IConfiguration _configuration;
        private readonly IServiceProvider _serviceProvider;
        private IActorRef _actorRef;

        private readonly IHostApplicationLifetime _applicationLifetime;

        public AkkaService(IServiceProvider serviceProvider, IHostApplicationLifetime appLifetime, IConfiguration configuration)
        {
            _serviceProvider = serviceProvider;
            _applicationLifetime = appLifetime;
            _configuration = configuration;
        }

        public async Task StartAsync(CancellationToken cancellationToken)
        {
            var bootstrap = BootstrapSetup.Create().WithConfig(
                ConfigurationFactory.ParseString(@"
                akka {
                  actor.provider = ""Akka.Cluster.ClusterActorRefProvider, Akka.Cluster""
                  remote {
                    dot-netty.tcp {
                      port = 0
                      hostname = localhost
                    }
                  }
                  cluster {
                    seed-nodes= [""akka.tcp://ticketing@localhost:8081""]
                  }
                  persistence {
                    journal.plugin = ""akka.persistence.journal.postgresql""
                    snapshot-store.plugin = ""akka.persistence.snapshot-store.postgresql""
                  }
                  persistence.journal.postgresql {
                    class = ""Akka.Persistence.PostgreSql.Journal.PostgreSqlJournal, Akka.Persistence.PostgreSql""
                    plugin-dispatcher = ""akka.actor.default-dispatcher""
                    connection-string = ""Host=localhost;Port=5432;Database=postgres;Username=postgres;Password=admin;""
                    schema-name = public
                    auto-initialize = on
                    table-name = event_journal
                  }
                  persistence.snapshot-store.postgresql {
                    class = ""Akka.Persistence.PostgreSql.Snapshot.PostgreSqlSnapshotStore, Akka.Persistence.PostgreSql""
                    plugin-dispatcher = ""akka.actor.default-dispatcher""
                    connection-string = ""Host=localhost;Port=5432;Database=postgres;Username=postgres;Password=admin;""
                    schema-name = public
                    auto-initialize = on
                    table-name = snapshot_store
                  }
                  persistence.query.journal.postgresql {
                    # Configuration for the PostgreSQL read journal plugin
                    class = ""Akka.Persistence.PostgreSql.Journal.PostgreSqlJournal, Akka.Persistence.PostgreSql""
                    write-plugin = ""akka.persistence.journal.postgresql"" // Reference to the write journal plugin
                    refresh-interval = 3s // Interval for polling for new events
                    max-buffer-size = 50 // Maximum number of events to buffer
                  }
                }
                "));

            // enable DI support inside this ActorSystem, if needed
            var diSetup = DependencyResolverSetup.Create(_serviceProvider);

            // merge this setup (and any others) together into ActorSystemSetup
            var actorSystemSetup = bootstrap.And(diSetup);


            // start ActorSystem
            _actorSystem = ActorSystem.Create("ticketing", actorSystemSetup);

            var region = ClusterSharding.Get(_actorSystem).Start(
                typeName: typeof(User).Name,
                entityPropsFactory: s => Props.Create(() => new User(s)),
                settings: ClusterShardingSettings.Create(_actorSystem),
                messageExtractor: new MessageExtractor());

            _actorRef = _actorSystem.ActorOf(TicketingSupervisor.Props(region), "ticketing");

            var routerProps = new ClusterRouterPool(new RoundRobinPool(5), new ClusterRouterPoolSettings(6, 2, true)).Props(CurrencyExchange.Props());

            var router = _actorSystem.ActorOf(routerProps, "currencyExchangeRouter");

            // add a continuation task that will guarantee shutdown of application if ActorSystem terminates
            //await _actorSystem.WhenTerminated.ContinueWith(tr => {
            //   _applicationLifetime.StopApplication();
            //});
#pragma warning disable CS4014 // Because this call is not awaited, execution of the current method continues before the call is completed
            _actorSystem.WhenTerminated.ContinueWith(_ => {
                _applicationLifetime.StopApplication();
            });
#pragma warning restore CS4014 // Because this call is not awaited, execution of the current method continues before the call is completed
            await Task.CompletedTask;
        }

        public async Task StopAsync(CancellationToken cancellationToken)
        {
            // strictly speaking this may not be necessary - terminating the ActorSystem would also work
            // but this call guarantees that the shutdown of the cluster is graceful regardless
            await CoordinatedShutdown.Get(_actorSystem).Run(CoordinatedShutdown.ClrExitReason.Instance);
        }

        public void Tell(object message)
        {
            _actorRef.Tell(message);
        }

        public Task<T> Ask<T>(object message)
        {
            return _actorRef.Ask<T>(message);
        }

        public sealed class MessageExtractor : IMessageExtractor
        {
            public string? EntityId(object message)
            {
                return (message as dynamic)?.EntityId.ToString();
            }

            public object? EntityMessage(object message)
            {
                return message;
            }

            public string? ShardId(object message)
            {
                return ShardId((message as dynamic)?.EntityId.ToString());
            }

            public string ShardId(string entityId, object? messageHint = null)
            {
                return entityId.GetHashCode().ToString();
            }
        }
    }
}
