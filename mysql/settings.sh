#!/usr/bin/env bash

if [ "x$MYSQL_USER" == "x" ]
then
	MYSQL_USER=docker
fi

if [ "x$MYSQL_HOST" == "x" ]
then
	MYSQL_HOST='%'
fi

if [ "x$MYSQL_PASS" == "x" ]
then
	MYSQL_PASS=$MYSQL_USER
fi

service mysql start
EXISTS=$(mysql -uroot -pmysqlroot -N -s -e "select count(1) from mysql.user where user='$MYSQL_USER' and host='$MYSQL_HOST';" 2> /dev/null)
if [ $EXISTS -eq 0 ]
then
	mysql -uroot -pmysqlroot -e "grant all privileges on *.* to '${MYSQL_USER}'@'${MYSQL_HOST}' identified by '$MYSQL_PASS';"
	mysql -uroot -pmysqlroot -e 'flush privileges;'
fi
