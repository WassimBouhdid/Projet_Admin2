#source : https://computingforgeeks.com/how-to-install-asterisk-17-on-ubuntu/

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
RUN apt update 
RUN add-apt-repository universe
RUN apt -y install git curl wget libnewt-dev libssl-dev libncurses5-dev subversion libsqlite3-dev build-essential libjansson-dev libxml2-dev  uuid-dev


#download asterisk 18 tarball
RUN apt policy asterisk 
RUN cd ~ 
RUN wget http://downloads.asterisk.org/pub/telephony/asterisk/asterisk-18-current.tar.gz 
RUN tar xvf asterisk-18-current.tar.gz 
RUN cd asterisk-18*/
RUN ls -al 
RUN ./contrib/scripts/get_mp3_source.sh 
RUN sudo contrib/scripts/install_prereq install

#build and install Asterisk 18 on ubuntu 20.04
RUN ./configure 
RUN make 
RUN make install 
RUN make samples 
RUN make progdocs 
RUN make config 

#ports
EXPOSE 2060/udp
EXPOSE 2060/tcp

#run asterisk 18
CMD ["asterisk"]
