systemctl restart firewalld
firewall-cmd --zone=public --add-port=443/tcp --permanent
firewall-cmd --reload
