FROM        astral1/jdk7

MAINTAINER  Jiung Jeong <ethernuiel@sanultari.com> 

RUN apt-get -y install git subversion
RUN useradd -m jenkins
ADD http://mirrors.jenkins-ci.org/war/latest/jenkins.war /home/jenkins/jenkins.war

EXPOSE 8080
CMD sudo -u jenkins java -Dfile.encoding=UTF-8 -Duser.home=/home/jenkins -jar /home/jenkins/jenkins.war
