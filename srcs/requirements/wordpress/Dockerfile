FROM debian

RUN apt update

# installing wordpress dependencies

# downloading wordpress files
WORKDIR /var/www/html/wp
RUN wget https://wordpress.org/latest.tar.gz
RUN tar -zxvf latest.tar.gz
RUN mv wordpress/* .
RUN rm -rf wordpress 
# chaning premissions
RUN chown -R www-data:www-data *
RUN chmod -R 755 *
