# Minecraft Server image

FROM openjdk:8-jre-alpine

MAINTAINER Jiri Zuna <jiri@zunovi.cz>

ENV MINECRAFT_VERSION=1.14.3
ENV MINECRAFT_JAR="https://launcher.mojang.com/v1/objects/d0d0fe2b1dc6ab4c65554cb734270872b72dadd6/server.jar"

# Install wget and certificates
RUN     apk update \
    &&  apk add ca-certificates wget \
    &&  update-ca-certificates

# Download the server jar file
RUN  	mkdir -p /opt/minecraft \
    &&  cd /opt/minecraft \
    &&  wget -q $MINECRAFT_JAR

WORKDIR /data
VOLUME /data

EXPOSE 25565

CMD echo eula=true > /data/eula.txt && java -jar /opt/minecraft/server.jar
