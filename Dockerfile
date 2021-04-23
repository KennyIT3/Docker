#FROM geerlingguy/docker-centos7-ansible:latest
FROM ansible/centos7-ansible:latest
USER root
RUN yum update -y

RUN yum install python3-pip -y && \
pip3 install flask && \
yum install vim -y && \
yum install mlocate -y


RUN mkdir /opt/Docker 
RUN /bin/bash -c "updatedb"

#ENV 

ADD ./.bashrc   /root/*

COPY  ./* /opt/Docker/

WORKDIR /opt/Docker
EXPOSE 5000

RUN ["/opt/Docker/installCompose.sh"]


RUN ["ls"]

RUN /bin/bash -c "cp .bashrc /root/"
RUN /bin/bash -c "source /root/.bashrc"
#ENTRYPOINT ["top"]
#CMD ["-U root"]
