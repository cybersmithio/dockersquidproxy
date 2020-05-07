FROM centos:7
RUN yum update -y
RUN yum install -y squid httpd
EXPOSE 3128/tcp

COPY squid.conf /etc/squid/squid.conf
COPY squid_passwd /etc/squid/squid_passwd

CMD  [ "/usr/sbin/squid", "-d", "1"]
