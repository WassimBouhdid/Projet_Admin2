# https://hub.docker.com/r/resystit/bind9

# docker run -d --name bind9 -p 53:53 -p 53:53/udp -v /absolute/path/named.conf:/etc/bind/named.conf -v /absolute/path/exemple.com.db:/etc/bind/exemple.com.db resystit/bind9:latest

FROM resystit/bind9

RUN apt-get install nano

copy named.conf /etc/bind/named.conf
