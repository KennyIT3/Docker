#FROM geerlingguy/docker-centos7-ansible:latest
FROM ansible/centos7-ansible:latest
USER root
RUN yum update -y
RUN yum install python3-pip -y
RUN pip3 install flask 
RUN mkdir /opt/Docker
ENV HOME /home

ADD ./.bashrc   /root/*

COPY  ./* /opt/Docker/

WORKDIR /opt/Docker
EXPOSE 5000

#ENTRYPOINT ["/opt/Docker/installCompose.sh"]
RUN ["/opt/Docker/installCompose.sh"]


RUN ["ls"]

CMD ["source /root/.bashrc"]

#CMD ["ll"]
