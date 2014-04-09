#!/usr/bin/env bash

JOIN_ADDR=$JOIN_PORT_29015_TCP_ADDR:$JOIN_PORT_29015_TCP_PORT
RUN_CMD="rethinkdb --bind all"

if [ $JOIN_ADDR != ':' ]
then
  RUN_CMD="$RUN_CMD -j $JOIN_ADDR"
fi

$RUN_CMD
