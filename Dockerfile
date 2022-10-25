FROM prohelion/profinity

RUN apt update && apt install -y --no-install-recommends \
    wget \
    apt-transport-https \
    && rm -rf /var/lib/apt/lists/

RUN wget https://packages.microsoft.com/config/ubuntu/22.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb \
    && dpkg -i packages-microsoft-prod.deb \
    && apt update \
    && apt install dotnet-sdk-6.0

WORKDIR /App

ENTRYPOINT []
CMD ["dotnet", "Profinity.dll"]
