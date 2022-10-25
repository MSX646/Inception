from alpine:3.16

run apk update && apk upgrade && apk add  redis && \
    sed -i "s|bind 127.0.0.1|#bind 127.0.0.1|g"  /etc/redis.conf && \
    sed -i "s|# maxmemory <bytes>|maxmemory 36mb|g"  /etc/redis.conf && \
    echo "maxmemory-policy allkeys-lru" >> /etc/redis.conf

expose 6379

cmd [ "redis-server" , "/etc/redis.conf" ]
#from debian:buster
#
#run apt update && apt install -y redis && \
#    sed -i "s|bind 127.0.0.1|#bind 127.0.0.1|g"  /etc/redis/redis.conf && \
#    sed -i "s|# maxmemory <bytes>|maxmemory 36mb|g"  /etc/redis/redis.conf && \
#    echo "maxmemory-policy allkeys-lru" >> /etc/redis/redis.conf && \
#    mkdir /var/run/redis && touch /var/run/redis/redis-server.pid
#
#expose 6379
#
#cmd [ "redis-server", "/etc/redis/redis.conf" ]
