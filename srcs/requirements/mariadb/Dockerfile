FROM debian

# installing mariadb
RUN apt update
RUN apt install mariadb-server -y

RUN useradd lmongol
RUN chown -R lmongol:lmongol /var/lib/mysql

# creating socket directory
RUN mkdir /run/mysqld
RUN chown -R lmongol:lmongol /run/mysqld

VOLUME /var/lib/mysql
EXPOSE 3306


WORKDIR /tmp

COPY tools/dbinit .
RUN chown lmongol:lmongol dbinit

# RUN env > /tmp/z
# RUN bash -c 'eval "echo \"$(</tmp/dbinit)\""' > /tmp/dbinitx
USER lmongol

ENTRYPOINT ["mysqld", "--init-file=/tmp/dbinit", "--bind-address=0.0.0.0"]
