# Minecraft Server image

FROM openjdk:17-jre-alpine

MAINTAINER Jiri Zuna <jiri@zunovi.cz>

# https://www.minecraft.net/en-us/download/server
ENV MINECRAFT_VERSION=1.19
ENV MINECRAFT_JAR="https://launcher.mojang.com/v1/objects/e00c4052dac1d59a1188b2aa9d5a87113aaf1122/server.jar"

# Install wget and certificates
RUN     apk update \
    &&  apk add ca-certificates wget bash \
    &&  update-ca-certificates

# Download the server jar file
RUN  	mkdir -p /opt/minecraft \
    &&  cd /opt/minecraft \
    &&  wget -q $MINECRAFT_JAR

WORKDIR /data
VOLUME /data

EXPOSE 25565

ADD ./minecraft.sh /opt
RUN chmod a+x /opt/minecraft.sh

CMD /opt/minecraft.sh
