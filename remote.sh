#!/usr/bin/env bash

# install the essentials

echo "Installing essentials"

apt-get update && apt-get install -y git tmux wget unzip


echo "Downloading Gilani's Thunder"
git clone https://github.com/amingilani/thunder
cd thunder

echo "Setting up data volume"
./setup_volume.sh

apt-get update && apt-get install -y docker-compose ruby unattended-upgrades

create_docker_compose_config.sh

run_node.sh

cd
