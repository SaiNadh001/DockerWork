FROM dd/node_base:latest

MAINTAINER dreamorbit<saibaba.nadh@dreamorbit.com>

ENV DEBIAN_FRONTEND noninteractive

ADD backend/ /var/www/backend/

EXPOSE 3000 

WORKDIR /var/www/backend

RUN npm install

CMD ["nodemon", "server.js"]



