FROM debian:bullseye
## TODO : check wp-cli

VOLUME /var/www/html

RUN apt update

# installing wordpress dependencies
RUN apt install php php-curl php-fpm php-bcmath php-gd php-soap php-zip php-curl php-mbstring php-mysqlnd php-gd php-xml php-intl php-zip curl wget -y
#
# # downloading wordpress files
WORKDIR /var/www/html/

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp

RUN chown -R www-data:www-data /var/www/html
COPY tools/* .

RUN chmod +x setup.sh
USER www-data
RUN wp core download

CMD ["./setup.sh"]
