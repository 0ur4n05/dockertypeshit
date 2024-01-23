FROM debian:bullseye

RUN sleep 10
VOLUME /var/www/html/

RUN apt update
RUN apt-get install -y curl unzip php-fpm wget

WORKDIR /tmp
COPY tools/run.sh .
RUN mkdir -p /run/php
RUN chmod +x run.sh
CMD ["./run.sh"]
