FROM debian

RUN apt update
RUN apt install mariadb-server -y

# changing db directory to the mounted volume

EXPOSE 3306
# docker safe daemon
CMD ["mysqld_safe"]
