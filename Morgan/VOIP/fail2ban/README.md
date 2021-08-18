##Fail2ban
- to install fail to ban on vps 

>sudo apt-get install -y fail2ban iptables

*iptables is required for fail2ban to function properly
- to check if the services are installed properly run the following commands:

>iptables -L

>service fail2ban status

###configuration files
-the configuration files of fail to ban are located at /etc/fail2ban/jail.conf 
