service tftpd-hpa stop && service isc-dhcp-server stop
service tftpd-hpa start && service isc-dhcp-server start; tail -f /var/log/daemon.log
service dnsmasq stop
tail -f /var/log/daemon.log
service dnsmasq start && tail -f /var/log/daemon.log
