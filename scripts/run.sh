#!/usr/bin/env bash

# set the correct working directory
cd "$(dirname "$0")"


./install_prerequisites.sh
./setup_volume.sh
./setup_firewall.sh
./create_docker_compose_config.sh
./add_bin_to_path.sh
./start_node.sh
