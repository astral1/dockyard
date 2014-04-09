FROM        astral1/jdk7
MAINTAINER  Jiung Jeong <ethernuiel@sanultari.com> 

ADD ./apache-tomcat-7.0.42.tar.gz /

RUN mv /apache-tomcat-7.0.42 /tomcat7
WORKDIR /tomcat7

EXPOSE 8080
CMD bin/catalina.sh run
