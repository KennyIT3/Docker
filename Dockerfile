#FROM library/ubuntu:14.04
#These are run command for Ubuntu image
# RUN apt-get update -y
# RUN apt-get dist-upgrade -y
# RUN apt-get install python3-pip -y
# RUN pip3 install flask

FROM geerlingguy/docker-centos7-ansible:latest
RUN yum update -y
RUN yum upgrade -y
RUN yum install python3-pip -y
RUN pip3 install flask 
   
ENV HOME /home

ADD ./ /opt/webapp/

WORKDIR /opt/webapp
EXPOSE 5000

ENTRYPOINT ["python3"]

CMD ["app.py"]