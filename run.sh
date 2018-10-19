#!/usr/bin/env bash

LOCAL_IP=ip -o route get 8.8.8.8 | sed -e 's/^.* src \([^ ]*\) .*$/\1/'
NODE_ALIAS="gthunder"

apt-get update && apt-get install -y docker-compose ruby unattended-upgrades

erb node_alias=$NODE_ALIAS local_ip=$LOCAL_IP docker-compose.yml.erb > docker-compose.yml

docker-compose up
