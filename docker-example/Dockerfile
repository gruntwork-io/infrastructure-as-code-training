FROM ubuntu:latest
MAINTAINER Yevgeniy Brikman <jim@gruntwork.io>

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get install -o Acquire::ForceIPv4=true -y curl
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash - && \
    apt-get install -y nodejs
RUN npm install -g nodemon

RUN mkdir -p /usr/src/app
COPY ./src /usr/src/app
WORKDIR /usr/src/app

EXPOSE 8080
CMD ["nodemon", "server.js"]
