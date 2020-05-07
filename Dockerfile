FROM centos
RUN yum update -y
RUN yum install -y squid
CMD sh