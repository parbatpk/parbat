#!/bin/bash
set -e

echo "$1"

if [ ! -f tmp/app-initialized ]; then
  function initialize_app_database(){
     sleep 90s

     /run-script.sh & /opt/mssql/bin/sqlservr

     touch tmp/app-initialized
  } 
  initialize_app_database &
fi

sleep 60s
/run-script.sh & /opt/mssql/bin/sqlservr 

exec "$@"
