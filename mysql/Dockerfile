FROM        astral1/saucy:min
MAINTAINER  Jiung Jeong <ethernuiel@sanultari.com> 

ADD . /scripts
RUN chmod +x /scripts/*.sh && /scripts/preinstall.sh

EXPOSE 3306
CMD /scripts/settings.sh && tail -f /var/log/mysql.log
