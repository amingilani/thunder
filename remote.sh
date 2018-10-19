#!/usr/bin/env bash

# install the essentials

echo "Installing essentials"

apt-get update && apt-get install -y git tmux wget unzip


echo "Downloading Gilani's Thunder"
git clone https://github.com/amingilani/thunder
cd thunder

tmux new-session -d './run.sh'

echo 'Tmux session now running, run `tmux a` to connect.'

cd
