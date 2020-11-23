#!/bin/sh

cp nginx.conf  /etc/nginx/nginx.conf
envsubst < auth.htpasswd > /etc/nginx/auth.htpasswd

php-fpm7 -d variables_order="EGPCS" && exec nginx -g "daemon off;"
