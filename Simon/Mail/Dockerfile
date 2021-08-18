FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get upgrade -y

# Installation des outils
RUN apt-get install -y vim nano telnet mutt dnsutils net-tools iputils-ping mailutils 
RUN apt-get install sudo -y



# Génération du certificat SSL
RUN openssl req -new -x509 -days 3650 -nodes -newkey rsa:4096 -out /etc/ssl/certs/mailserver.pem -keyout /etc/ssl/private/mailserver.pem -subj "/C=BE/ST=Braban-wallon/L=Wavre/O=Ephec/OU=IT/CN=mail.l2-6.ephec-ti.be"

# Installation Database
RUN apt update
RUN apt-get install mariadb-server -y


COPY db/* /usr/bin/
RUN chmod +x /usr/bin/AddUsers
RUN chmod +x /usr/bin/dellUsers
RUN chmod +x /usr/bin/showUser
RUN chmod +x /usr/bin/readAdmin
RUN chmod +x /usr/bin/readUsers

#Configuration - MariaDB

COPY config-db/createDB.sql config-sql/createDB.sql
COPY config-db/createUsers.sql config-sql/createUsers.sql


# Installation de Postfix 

RUN apt-get install -y postfix postfix-mysql 

#Configuration de Postfix

RUN groupadd -g 5000 vhosts && useradd -g vhosts -u 5000 vhosts -d /var/mail/vhosts -s /bin/false -m
COPY postfix/main.cf /etc/postfix/main.cf
COPY postfix/master.cf /etc/postfix/master.cf
COPY postfix/generic /etc/postfix/generic
COPY postfix/mysql-virtual-mailbox-domains.cf /etc/postfix/mysql-virtual-mailbox-domains.cf
COPY postfix/mysql-virtual-mailbox-maps.cf /etc/postfix/mysql-virtual-mailbox-maps.cf
RUN postmap /etc/postfix/generic

#Installation de Dovecot (Pour IMAP)

RUN apt-get install -y dovecot-core dovecot-imapd dovecot-mysql
RUN apt-get install -y dovecot-sieve dovecot-managesieved

#Configuration de Dovecot 
COPY dovecot/dovecot.conf /etc/dovecot/dovecot.conf
COPY dovecot/dovecot-sql.conf.ext /etc/dovecot/dovecot-sql.conf.ext

COPY dovecot/10-auth.conf /etc/dovecot/conf.d/10-auth.conf
COPY dovecot/10-mail.conf /etc/dovecot/conf.d/10-mail.conf
COPY dovecot/10-master.conf /etc/dovecot/conf.d/10-master.conf

COPY dovecot/auth-sql.conf.ext /etc/dovecot/conf.d/auth-sql.conf.ext
COPY dovecot/10-ssl.conf /etc/dovecot/conf.d/10-ssl.conf

COPY dovecot/20-lmtp.conf /etc/dovecot/conf.d/20-lmtp.conf
COPY dovecot/default.sieve /var/lib/dovecot/sieve/default.sieve

RUN sievec /var/lib/dovecot/sieve/default.sieve
RUN chown -R vhosts:vhosts /var/lib/dovecot/sieve/*
RUN chmod a+x /var/lib/dovecot


# lance le docker
CMD ["sh", "-c", "service mysql start; mysql -u root < config-sql/create-db.sql; mysql -u root < config-sql/create-users.sql; service postfix start; service dovecot start; tail -F /var/log/mail.log"]

#port smtp
EXPOSE 25/tcp
EXPOSE 587/tcp

#port imap
EXPOSE 142/tcp
EXPOSE 993/tcp

#port db
EXPOSE 3306/tcp
EXPOSE 5000/tcp