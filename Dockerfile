FROM rpmbuild/centos7:latest

USER root
RUN sed -i -e 's/Defaults    requiretty.*/ #Defaults    requiretty/g' /etc/sudoers
RUN yum update -y \
 && yum install -y rpmdevtools epel-release rpmlint \
 && rm -f /home/builder/.rpmmacros

USER builder
CMD /bin/bash
