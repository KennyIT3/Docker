FROM geerlingguy/docker-centos7-ansible:latest
RUN yum update -y
RUN yum install python3-pip -y
RUN pip3 install flask 
ENV HOME /home

#ADD ./   /opt/python/

COPY  ./* /opt/Docker/

WORKDIR /opt/Docker
EXPOSE 5000

ENTRYPOINT ["./installCompose.sh"]

CMD ["ll"]
