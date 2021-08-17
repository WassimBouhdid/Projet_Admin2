
#https://hub.docker.com/r/romeoz/docker-apache-php
FROM romeoz/docker-apache-php
# Install some useful tools for debugging
# Add the reuired files so that the apahce server can initialize all virtualhosts.
# Security bonus for apache 403 or 404 error
COPY apache2.conf /etc/apache2/apache2.conf

