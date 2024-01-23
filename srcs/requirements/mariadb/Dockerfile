FROM debian:bullseye

# installing mariadb
RUN apt update
RUN apt install mariadb-server -y

RUN useradd mysqld

VOLUME /var/lib/mysql
# EXPOSE 3306

WORKDIR /tmp

COPY tools/* .

RUN chmod +x setup.sh

ENTRYPOINT ["./setup.sh"]
