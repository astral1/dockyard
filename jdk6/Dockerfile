FROM        astral1/saucy:min
MAINTAINER  Jiung Jeong <ethernuiel@sanultari.com> 

RUN apt-get update && apt-get -y install software-properties-common
RUN add-apt-repository ppa:webupd8team/java
RUN apt-get update

RUN echo oracle-java6-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections
RUN apt-get -y install oracle-java6-installer && apt-get clean
RUN apt-get -y install oracle-java6-set-default && apt-get clean
RUN update-alternatives --display java
