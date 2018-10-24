# Minecraft Server image

FROM openjdk:8-jre-alpine

MAINTAINER Jiri Zuna <jiri@zunovi.cz>

ENV MINECRAFT_VERSION=1.13.2
ENV MINECRAFT_JAR="https://launcher.mojang.com/v1/objects/3737db93722a9e39eeada7c27e7aca28b144ffa7/server.jar"

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
