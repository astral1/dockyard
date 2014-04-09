FROM        astral1/saucy:dev
MAINTAINER  Jiung Jeong <ethernuiel@sanultari.com> 

ADD http://download.redis.io/releases/redis-2.8.8.tar.gz /
RUN tar zxf redis-2.8.8.tar.gz

WORKDIR /redis-2.8.8
RUN make -j4

CMD src/redis-server
