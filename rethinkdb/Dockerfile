FROM        astral1/saucy:min
MAINTAINER  Jiung Jeong <ethernuiel@sanultari.com> 

RUN apt-get install software-properties-common -y
RUN add-apt-repository ppa:rethinkdb/ppa
RUN apt-get update && apt-get upgrade -y
RUN apt-get install rethinkdb -y

ADD . /scripts
RUN chmod u+x /scripts/run_redb.sh
EXPOSE 8080 28015 29015
CMD /scripts/run_redb.sh
