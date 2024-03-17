# How to run the application?

### Setup the database
- Create postgreSql database (for example docker container)
- Make sure that connection strings in AkkaService.cs are valid based on your database deployment

### Ensure unique ports of each node
Use port 0 in AkkaService.cs node configuration in order to ensure unique port.
If you want to run multiple nodes make sure to change ports of swagger in launchSettings or compeletely remove Controllers.

### Start applications
Run as many apps as you want to cooperate with each other.
*NOTE:* Basic configuration of Cluster.Sharding for User actor is configured to operate with 2 nodes. Ensure that your cluster configuration matches the configuration in AkkaService.cs

### Running sonarqube
`docker compose -f sonarqube.yml up `

- Open sonarqube on localhost:9000 and login using login=`admin`, password=`admin`
- Create a project: `Add a project > manual`. Use `akka-ticket` in both form inputs
- Create token for `akka-ticket` and copy it
- Click continue
- Select `.NET` and `.NET Core`
- Install scanner running `dotnet tool install --global dotnet-sonarscanner`
- Execute scan running the following commands:
  - `dotnet sonarscanner begin /k:"akka-ticket" /d:sonar.host.url="http://localhost:9000"  /d:sonar.login="c44fc2cb83fe6f49df5f8e5f00bcd6663800c561"`
  - `dotnet build`
  - `dotnet sonarscanner end /d:sonar.login="c44fc2cb83fe6f49df5f8e5f00bcd6663800c561"`