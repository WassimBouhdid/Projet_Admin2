FROM debian:latest

RUN apt-get update
RUN apt-get upgrade -y


RUN apt install -y dnsutils
RUN apt install -y bind9

#COPY named.conf /etc/bind/named.conf
#COPY l2-6.ephec-ti.be /etc/bind/l2-6.ephec-ti.be

#CMD ["named", "-c", "/etc/bind/named.conf", "-g"]
