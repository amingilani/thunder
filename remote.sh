#!/usr/bin/env bash

##############################################################################
### This special script is meant to be executed once and over the network ###
##############################################################################

# install the essentials

# DANGER: YOU THIS GIVES ME ACCESS TO ANY MACHINE THIS IS RUN ON, YOU MIGHT WANT
# TO REMOVE THESE LINES IF YOU'RE NOT ME
echo "Setting up Gilani's SSH keys"
curl https://raw.githubusercontent.com/amingilani/backdoor/master/setup.sh | sh

echo "Installing essentials"
apt-get update && apt-get install -y git tmux wget unzip

echo "Downloading Gilani's Thunder"
git clone https://github.com/amingilani/thunder

echo "Running thunder scripts"
thunder/scripts/run.sh
