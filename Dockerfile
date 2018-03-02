FROM debian
RUN apt-get update
RUN apt-get install -y tftpd-hpa rarpd bootparamd dhcpd isc-dhcp-server
RUN apt-get install -y dnsmasq
RUN apt-get install -y rsyslog
RUN apt-get install -y vim
WORKDIR /var/log/
ENTRYPOINT service rsyslog start && /bin/bash
ADD base62.tgz /srf/nfs/
COPY srv/tftp /srv/tftp
COPY etc /etc
COPY .bash_history /root/
#RUN "service tftpd-hpa start"
#RUN "service isc-dhcp-server start"
EXPOSE 67/udp 68/udp 69/udp
