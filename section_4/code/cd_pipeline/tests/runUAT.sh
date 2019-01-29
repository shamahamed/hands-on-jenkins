#!/bin/bash

# set variables
# hostname='localhost'
port=$1

# Crude hack to get around dind jenkins 
if [ $port == '8888' ];
then
   hostname='172.17.0.3'
else
   hostname='172.17.0.4'
fi

port='5000'
# wait for the app to start
sleep 5 

# ping the app
status_code=$(curl --write-out %{http_code} --out /dev/null --silent ${hostname}:${port})

if [ $status_code == 200 ];
then
	echo "PASS: ${hostname}:${port} is reachable"
else
	echo "FAIL: ${hostname}:${port} is unreachable"
    exit 1
fi
