FROM ubuntu:latest
MAINTAINER Yevgeniy Brikman <jim@gruntwork.io>

RUN apt-get update && apt-get install -y nodejs

RUN mkdir -p /usr/src/app
COPY ./src /usr/src/app
WORKDIR /usr/src/app

CMD ["nodejs", "server.js"]