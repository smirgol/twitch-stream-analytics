FROM trafex/php-nginx:latest

LABEL authors="smirgol"

USER root

# install software
RUN apk update && apk add composer bash htop php84-simplexml

# pre-create composer cache folder and set permissions
RUN mkdir -p /.composer/cache && chown 1000:1000 /.composer/cache

# cleanup
RUN rm -rf /var/cache/apk

COPY nginx.conf /etc/nginx/conf.d/symfony-web-root.conf

USER nobody:nobody

