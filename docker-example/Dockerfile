FROM ubuntu:latest
MAINTAINER Yevgeniy Brikman <jim@gruntwork.io>

RUN apt-get update && apt-get install -o Acquire::ForceIPv4=true -y nodejs npm
RUN npm install -g nodemon
RUN ln -s /usr/bin/nodejs /usr/bin/node

RUN mkdir -p /usr/src/app
COPY ./src /usr/src/app
WORKDIR /usr/src/app

EXPOSE 8080
CMD ["nodemon", "server.js"]