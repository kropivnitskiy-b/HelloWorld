FROM alpine:3.12

RUN apk update && apk add nginx php7-fpm gettext && \
    mkdir -p /run/nginx

ADD www /www
ADD nginx.conf /nginx.conf
ADD php-fpm.conf /etc/php7/php-fpm.conf
ADD start.sh /start.sh
ADD auth.htpasswd /auth.htpasswd


ENV HTPASSWD='admin:$apr1$mXoshCTB$jLy85OXzap0dd7h3cT9eS0'

EXPOSE 80
CMD /start.sh

