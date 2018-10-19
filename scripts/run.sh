#!/usr/bin/env bash

# set the correct working directory
cd "$(dirname "$0")"


./install_prerequisites.sh
./setup_volume.sh
./create_docker_compose_config.sh
./start_node.sh
