FROM trafex/php-nginx:latest

LABEL authors="smirgol"

# change to root user to be able to modify stuff
USER root

# install software
RUN apk update && apk add composer bash htop php84-simplexml mariadb-client shadow

# cleanup
RUN rm -rf /var/cache/apk

# pre-create composer cache folder and set permissions
RUN mkdir -p /.composer/cache && chown nobody:nobody /.composer/cache

# nobody auf UID 1000 mappen (Host-User)
RUN mkdir -p /home/nobody \
  && usermod -u 1000 nobody \
  && groupmod -g 1000 nobody \
  && usermod -d /home/nobody nobody \
  && chown -R nobody:nobody /home/nobody /run /var/lib/nginx /var/log/nginx /var/www/html

# add some bash aliases
RUN echo 'alias console="/var/www/html/bin/console"' >> /home/nobody/.bashrc
RUN echo 'alias ll="ls -lah"' >> /home/nobody/.bashrc

# copy nginx config
COPY nginx.conf /etc/nginx/conf.d/symfony-web-root.conf

# change back to nginx default user
USER nobody:nobody


