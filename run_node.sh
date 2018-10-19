#!/usr/bin/env bash

apt-get update && apt-get install -y docker-compose ruby unattended-upgrades

create_docker_compose_config.sh

docker-compose up
