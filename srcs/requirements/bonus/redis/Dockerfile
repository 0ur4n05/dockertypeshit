FROM debian:bullseye

RUN apt update
RUN apt install redis-server php-redis -y
RUN echo "maxmemory 70mb" >> /etc/redis/redis.conf

# EXPOSE 6379

CMD ["redis-server", "--protected-mode no", "--bind 0.0.0.0"]
