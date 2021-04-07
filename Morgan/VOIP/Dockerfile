#source : https://computingforgeeks.com/how-to-install-asterisk-17-on-ubuntu/
#source : https://www.howtoforge.com/how-to-install-asterisk-17-on-ubuntu-2004/

FROM ubuntu:20.04

#basic config
RUN apt-get update
RUN apt-get upgrade -y 
RUN apt-get update && \
      apt-get -y install sudo

RUN useradd -m docker && echo "docker:docker" | chpasswd && adduser docker sudo
RUN apt -y install net-tools 
RUN apt -y install iputils-ping 
RUN apt -y install nano
RUN apt -y install software-properties-common
RUN apt -y install subversion
RUN apt -y install apt-utils 
RUN echo "Europe/Brussels" | tee /etc/timezone

#install build dependencies
RUN apt-get install gnupg2 software-properties-common git curl wget libnewt-dev libssl-dev libncurses5-dev subversion libsqlite3-dev build-essential libjansson-dev libxml2-dev uuid-dev -y

#download asterisk 17 
RUN wget http://downloads.asterisk.org/pub/telephony/asterisk/asterisk-17-current.tar.gz && \
tar -xvzf asterisk-17-current.tar.gz && \
cd asterisk-17*/ && \
contrib/scripts/get_mp3_source.sh && \
contrib/scripts/install_prereq install && \

#build and install Asterisk on ubuntu
./configure && \
make && \
make install && \
make samples && \
make progdocs && \
make config


#ports
EXPOSE 2060/udp
EXPOSE 2060/tcp

#run asterisk 18
CMD ["asterisk"]
