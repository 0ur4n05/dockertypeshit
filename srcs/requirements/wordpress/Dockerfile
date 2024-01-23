FROM debian:bullseye
## TODO : check wp-cli

VOLUME /var/www/html

RUN apt update

# installing wordpress dependencies
RUN apt install php php-fpm php-mysqlnd php-mysql wget curl -y
#
# # downloading wordpress files
WORKDIR /var/www/html/

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp

COPY tools/setup.sh .
# EXPOSE 9000

RUN chmod +x setup.sh

CMD ["./setup.sh"]


