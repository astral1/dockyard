FROM        astral1/jdk7

MAINTAINER  Jiung Jeong <ethernuiel@sanultari.com> 

RUN apt-get -y install git subversion
ADD http://mirrors.jenkins-ci.org/war/latest/jenkins.war /jenkins.war

EXPOSE 8080
CMD java -Dfile.encoding=UTF-8 -Duser.home=/root -jar /jenkins.war
