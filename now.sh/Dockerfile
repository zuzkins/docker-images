FROM node:7.4-alpine

MAINTAINER Jiri Zuna <jiri@zunovi.cz>

RUN    npm install -g now@4.0.0 \
    && apk update \
    && apk add bash \
    && rm -rf /var/cache/apk/*

ADD now-wrapper.sh /usr/bin

WORKDIR /data
VOLUME /data

ENTRYPOINT ["/usr/bin/now-wrapper.sh"]
