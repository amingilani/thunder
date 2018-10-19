#!/usr/bin/env bash
cd "$(dirname "$0")"

LOCAL_IP=$(ip -o route get 8.8.8.8 | sed -e 's/^.* src \([^ ]*\) .*$/\1/')
NODE_ALIAS="gthunder"

erb node_alias=$NODE_ALIAS local_ip=$LOCAL_IP ../docker-compose.yml.erb > ../docker-compose.yml
