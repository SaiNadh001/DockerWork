FROM ubuntu:latest

MAINTAINER dreamorbit<saibaba.nadh@dreamorbit.com>

# Surpress Upstart errors/warning

RUN dpkg-divert --local --rename --add /sbin/initctl

RUN ln -sf /bin/true /sbin/initctl

# Let the conatiner know that there is no tty

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update

RUN apt-get install -y nano

RUN apt-get install -y nginx

VOLUME ["/etc/nginx/sites-enabled", "/etc/nginx/certs", "/etc/nginx/conf.d", "/var/log/nginx", "/var/www"]
