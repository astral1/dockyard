FROM        astral1/jdk7
MAINTAINER  Jiung Jeong <ethernuiel@sanultari.com> 

ADD ./apache-tomcat-6.0.37.tar.gz /

RUN mv /apache-tomcat-6.0.37 /tomcat6
WORKDIR /tomcat6

EXPOSE 8080
CMD bin/catalina.sh run
