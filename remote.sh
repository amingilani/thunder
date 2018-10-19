#!/usr/bin/env bash

# install the essentials

echo "Installing essentials"

apt-get update && apt-get install -y git tmux wget unzip


echo "Downloading Gilani's Thunder"
git clone https://github.com/amingilani/thunder
cd thunder

echo "Setting up data volume"
./setup_volume.sh

tmux new-session -d './run_node.sh'

echo 'Tmux session now running, run `tmux a` to connect.'

cd
