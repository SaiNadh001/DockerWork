FROM dd/nginx_base:latest

MAINTAINER dreamorbit<saibaba.nadh@dreamorbit.com>

ADD frontend/ /var/www/frontend

RUN mv /etc/nginx/nginx.conf /etc/nginx/nginx.conf.original

ADD nginx.conf /etc/nginx/nginx.conf

RUN echo "\ndaemon off;" >> /etc/nginx/nginx.conf

RUN chown -R www-data:www-data /var/lib/nginx

CMD ["nginx"]

# Expose ports.
EXPOSE 80
EXPOSE 443