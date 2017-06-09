FROM dads2busy/c7-ssh-ldap
MAINTAINER Aaron D. Schroeder <dads2busy@gmail.com>

RUN yum -y --setopt=tsflags=nodocs update && \
    yum -y --setopt=tsflags=nodocs install httpd && \
    yum clean all
RUN systemctl enable httpd
EXPOSE 80

CMD ["/lib/systemd/systemd"]
