FROM ubuntu:20.04

#basic config
RUN apt-get update -y
RUN apt-get install -y net-tools
RUN apt-get install -y iputils-ping
RUN apt-get install -y nano
RUN apt-get install -y apt-utils
RUN echo "Europe/Brussels" | tee /etc/timezone
#asterisk install dependance
RUN apt install build-essential libxml2-dev libncurses5-dev linux-headers-`uname -r` libsqlite3-dev libssl-dev libedit-dev uuid-dev libjansson-dev

#download latest 18 version of asterisk
RUN mkdir /usr/src/asterisk
RUN cd /usr/src/asterisk
RUN wget http://downloads.asterisk.org/pub/telephony/asterisk/asterisk-18-current.tar.gz
RUN tar -xvzf asterisk-18-current.tar.gz
RUN cd asterisk-18.0.3 
RUN ./configure --with-jansson-bundled
RUN make menuselect


#ports
EXPOSE 2060/udp
EXPOSE 2060/tcp
