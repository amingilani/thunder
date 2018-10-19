#!/usr/bin/env bash

# install the essentials

echo "Installing essentials"

apt-get update && apt-get install -y git tmux wget unzip

ZIPFILE=thunder.zip
UNZIPDIR="thunder-master"

echo "Downloading Gilani's Thunder"
wget https://github.com/amingilani/thunder/archive/master.zip -O $ZIPFILE

echo "Setting up code"
unzip $ZIPFILE
rm $ZIPFILE

cd $UNZIPDIR

tmux new-session -d './run.sh'

echo 'Tmux session now running, run `tmux a` to connect.'

cd
