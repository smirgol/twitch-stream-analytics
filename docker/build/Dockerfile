FROM trafex/php-nginx:latest

LABEL authors="smirgol"

USER root

RUN apk update
RUN apk add composer
RUN apk add bash
RUN apk add htop

USER 1000:1000