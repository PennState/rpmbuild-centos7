FROM rpmbuild/centos7

USER root
RUN sed -i -e 's/Defaults    requiretty.*/ #Defaults    requiretty/g' /etc/sudoers
RUN yum update -y

USER builder
CMD /bin/bash
