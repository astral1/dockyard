#!/usr/bin/env bash

apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E5267A6C
cp -a /scripts/*.list /etc/apt/sources.list.d/
apt-get update
debconf-set-selections $(dirname $0)/mysql.selection
apt-get -y install mysql-server-5.6
service mysql stop
sleep 5
sed -ie 's/\(bind-address\s*=\s*\).*$/\10.0.0.0/g' /etc/mysql/my.cnf
