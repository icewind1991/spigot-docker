# Spigot-docker

Spigot Minecraft server as docker container

## Building

```
docker build -t spigot .
```

## Running

```
docker run -d --name spigot-server -e EULA=1 -p 25565:25565 -p 25565:25565/udp spigot
```
