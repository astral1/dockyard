#!/usr/bin/env bash

if [ "x$PSQL_USER" == "x" ]
then
	PSQL_USER=docker
fi

if [ "x$PSQL_PASS" == "x" ]
then
	PSQL_PASS=docker
fi

service postgresql start
EXISTS=$(sudo -u postgres psql -tAc "SELECT 1 FROM pg_roles WHERE rolname='$PSQL_USER'")
if [ "x$EXISTS" == "x" ]
then
	sudo -u postgres createuser -d -r -s $PSQL_USER
	sudo -u postgres createdb -O $PSQL_USER $PSQL_USER
	sudo -u postgres psql -c "ALTER USER $PSQL_USER WITH PASSWORD '$PSQL_PASS';"

	echo "host	all	$PSQL_USER	0.0.0.0/0	md5" > /etc/postgresql/9.3/main/pg_hba.conf
	echo 'local	all	all		trust' >> /etc/postgresql/9.3/main/pg_hba.conf
	service postgresql restart
fi
