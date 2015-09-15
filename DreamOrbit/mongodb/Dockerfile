FROM dd/mongo_base:latest

MAINTAINER dreamorbit<saibaba.nadh@dreamorbit.com>

ENV DEBIAN_FRONTEND noninteractive

ADD /dreamorbit /dreamorbit

CMD ["mongod"]

# Expose ports: - 27017: process   - 28017: http
EXPOSE 27017
EXPOSE 28017


