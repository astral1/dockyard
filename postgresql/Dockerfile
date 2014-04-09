FROM        astral1/saucy:min
MAINTAINER  Jiung Jeong <ethernuiel@sanultari.com> 

RUN wget --quiet -O - http://apt.postgresql.org/pub/repos/apt/ACCC4CF8.asc | sudo apt-key add -
RUN echo deb http://apt.postgresql.org/pub/repos/apt/ precise-pgdg main > /etc/apt/sources.list.d/postgresql.list
RUN apt-get update && apt-get install -y postgresql-9.3 postgresql-client-9.3 postgresql-client-9.3 postgresql-contrib-9.3
RUN echo "listen_addresses='*'" >> /etc/postgresql/9.3/main/postgresql.conf
RUN echo 'local all all trust' > /etc/postgresql/9.3/main/pg_hba.conf
ADD . /scripts
RUN chmod u+x /scripts/*.sh

EXPOSE 5432
CMD /scripts/settings.sh && tail -f /var/log/postgresql/postgresql-9.3-main.log
