FROM centos
RUN yum update
RUN yum install squid
CMD sh