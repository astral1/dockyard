FROM        astral1/saucy:dev
MAINTAINER  Jiung Jeong <ethernuiel@sanultari.com>  

ENV PATH /usr/local/rvm/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

RUN echo progress-bar >> /etc/curlrc
RUN curl -L get.rvm.io | bash -s stable
RUN /usr/local/rvm/bin/rvm-shell && rvm requirements run
RUN /usr/local/rvm/bin/rvm-shell && rvm install 2.0.0
RUN /usr/local/rvm/bin/rvm-shell && rvm install 1.9.3
RUN /usr/local/rvm/bin/rvm-shell && rvm use --default 2.0.0
