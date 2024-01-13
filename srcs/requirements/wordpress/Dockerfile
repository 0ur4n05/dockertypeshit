FROM debian

RUN apt update

# installing wordpress dependencies
RUN  apt install php7.4-fpm php7.4-common php7.4-mysql \
	php7.4-xml php7.4-xmlrpc php7.4-curl php7.4-gd \
	php7.4-imagick php7.4-cli php7.4-dev  \
	php7.4-mbstring php7.4-opcache  \
	php7.4-soap php7.4-zip -y

# downloading wordpress files
WORKDIR /var/www/html/wp

RUN wget https://wordpress.org/latest.tar.gz
RUN tar -zxvf latest.tar.gz
RUN mv wordpress/* .
RUN rm -rf wordpress 

# chaning premissions
RUN chown -R www-data:www-data *
RUN chmod -R 755 *

RUN cp wp-config-sample.php wp-config.php

CMD ["sleep", "infinity"]
