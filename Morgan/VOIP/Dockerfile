#source : https://computingforgeeks.com/how-to-install-asterisk-17-on-ubuntu/

FROM ubuntu:20.04

#basic config
RUN apt-get update -y 
apt-get upgrade -y
apt -y install net-tools
apt -y install iputils-ping
apt -y install nano
apt -y install apt-utils
echo "Europe/Brussels" | tee /etc/timezone

#install build dependencies
RUN apt update
add-apt-repository universe
apt -y install git curl wget libnewt-dev libssl-dev libncurses5-dev subversion libsqlite3-dev build-essential libjansson-dev libxml2-dev  uuid-dev


#download asterisk 18 tarball
RUN apt policy asterisk
cd ~
wget http://downloads.asterisk.org/pub/telephony/asterisk/asterisk-18-current.tar.gz
tar xvf asterisk-18-current.tar.gz
cd asterisk-18*/
contrib/scripts/get_mp3_source.sh
contrib/scripts/install_prereq install

#build and install Asterisk 18 on ubuntu 20.04
RUN ./configure
make
make install
make samples
make progdocs
make config

#ports
EXPOSE 2060/udp
EXPOSE 2060/tcp

#run asterisk 18
CMD ["asterisk"]
