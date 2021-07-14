FROM resystit/bind9

COPY named.conf /etc/bind/named.conf
COPY l2-6.ephec-ti.be /etc/bind/l2-6.ephec-ti.be

CMD ["named", "-c", "/etc/bind/named.conf", "-g", "-u", "named"]
