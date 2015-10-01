FROM ubuntu:15.04

RUN apt-get update
RUN apt-get install wget default-jre -y

RUN export JAVA_HOME=/usr/lib/jvm/default-java/

WORKDIR /usr/local
RUN wget -q http://apache.mirrors.spacedump.net/activemq/5.12.0/apache-activemq-5.12.0-bin.tar.gz
RUN tar zxf apache-activemq-5.12.0-bin.tar.gz
RUN rm apache-activemq-5.12.0-bin.tar.gz
WORKDIR /usr/local/apache-activemq-5.12.0

EXPOSE 8161

