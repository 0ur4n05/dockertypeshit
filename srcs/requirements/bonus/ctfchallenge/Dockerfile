FROM debian:bullseye

RUN apt update
RUN apt install socat make gcc -y

EXPOSE 1337

RUN useradd ctfplayer 

WORKDIR /challenge
COPY tools/* .

RUN make
USER ctfplayer

CMD ["socat", "tcp-l:1337,reuseaddr,fork", "EXEC:./hackme"]
