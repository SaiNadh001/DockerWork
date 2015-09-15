FROM ubuntu:latest

MAINTAINER dreamorbit<saibaba.nadh@dreamorbit.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update 

RUN apt-get install -y nano

RUN apt-get install -y nodejs 

RUN apt-get install -y npm

RUN ln -s /usr/bin/nodejs /usr/bin/node

RUN npm install -g pm2 nodemon

RUN mkdir -p /var/www



