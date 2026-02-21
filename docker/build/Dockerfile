FROM trafex/php-nginx:latest

LABEL authors="smirgol"

USER root

# install software
RUN apk update && apk add composer bash htop

# pre-create composer cache folder and set permissions
RUN mkdir -p /.composer/cache && chown 1000:1000 /.composer/cache

# cleanup
RUN rm -rf /var/cache/apk

USER 1000:1000