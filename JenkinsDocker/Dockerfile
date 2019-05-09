# start from base
#FROM ubuntu:14.04
FROM jenkins/jenkins:lts
MAINTAINER Tal Martsiano <taljmars@gmail.com>

COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt

COPY jdk-8*.tar.gz /usr/share/jdk-8.tar.gz

# install system-wide deps for python and node
USER root
RUN apt-get update
#RUN apt-get install -y maven
RUN apt-get install -y -q git
#RUN apt-get install -y -q openjdk-8-jdk
#RUN apt-get install -y -q openjdk-8-jre

#USER jenkins
RUN wget https://archive.apache.org/dist/maven/maven-3/3.0.4/binaries/apache-maven-3.0.4-bin.tar.gz
RUN mkdir -p /usr/local/apache-maven/apache-maven-3.0.4
RUN tar -xzvf apache-maven-3.0.4-bin.tar.gz
RUN rm apache-maven-3.0.4-bin.tar.gz
RUN mv apache-maven-3.0.4/* /usr/local/apache-maven/apache-maven-3.0.4/
ENV M2_HOME /usr/local/apache-maven/apache-maven-3.0.4/
ENV M2 $M2_HOME/bin

RUN tar -zxvf /usr/share/jdk-8.tar.gz
RUN mv jdk1.8.* /usr/lib/jvm/
RUN rm /usr/share/jdk-8.tar.gz

# expose port
#EXPOSE 50000
#EXPOSE 8080

COPY entrypoint.sh /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

