FROM ubuntu:18.10 AS build

RUN apt-get update && apt-get install -y git openjdk-8-jre-headless wget
ADD build.sh /
RUN /build.sh 1.12.2

FROM ubuntu:18.10

RUN apt-get update && apt-get install -y openjdk-8-jre-headless && rm -rf /var/lib/apt/lists/*
COPY --from=build /spigot-1.12.2.jar /spigot.jar
COPY server.sh /server.sh

CMD ["sh", "/server.sh"]
