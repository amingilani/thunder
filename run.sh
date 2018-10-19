#!/usr/bin/env bash

LOCAL_IP=ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1'
NODE_ALIAS="gthunder"

apt-get update && apt-get install -y docker-compose ruby unattended-upgrades

erb node_alias=$NODE_ALIAS local_ip=$LOCAL_IP docker-compose.yml.erb > docker-compose.yml
