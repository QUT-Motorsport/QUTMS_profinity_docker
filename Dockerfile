FROM prohelion/profinity-console:develop

RUN apt-get update && apt-get install -y curl wget

WORKDIR /App

ENTRYPOINT ["dotnet", "Profinity.dll", "-b"]
