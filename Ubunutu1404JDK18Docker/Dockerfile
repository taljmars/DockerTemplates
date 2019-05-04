FROM ubuntu:14.04
MAINTAINER Tal Martsiano <taljmars@gmail.com>


COPY jdk-8*.tar.gz /usr/share/jdk-8.tar.gz

# install system-wide deps for python and node
USER root
RUN apt-get update

#USER jenkins
RUN tar -zxvf /usr/share/jdk-8.tar.gz
RUN mv jdk1.8* /usr/lib/jvm/
RUN rm /usr/share/jdk-8.tar.gz

#Solve JAVA link
RUN ln -s /usr/lib/jvm/bin/java /bin/


