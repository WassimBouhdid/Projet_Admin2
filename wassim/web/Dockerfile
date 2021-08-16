#https://hub.docker.com/r/romeoz/docker-apache-php
FROM romeoz/docker-apache-php
# Install some useful tools for debugging
RUN apt-get update -y
RUN apt-get install -y net-tools
RUN apt-get install -y iputils-ping
RUN apt-get install -y nano vim
RUN apt-get install -y dnsutils
RUN apt-get install -y elinks curl
# Encryption port 443 configuration files
RUN apt-get install -y software-properties-common 
RUN apt-get install -y python-certbot-apache
# Add the reuired files so that the apahce server can initialize all virtualhosts.
# Security bonus for apache 403 or 404 error
COPY apache2.conf /etc/apache2/apache2.conf

