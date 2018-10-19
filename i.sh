#!/usr/bin/env bash

# install the essentials
apt-get update && apt-get install -y git tmux wget unzip

ZIPFILE=thunder.zip
UNZIPDIR="thunder-master"

wget https://github.com/amingilani/thunder/archive/master.zip -O $ZIPFILE
unzip $ZIPFILE

cd $UNZIPDIR

tmux new -d './run.sh'

echo 'Tmux session now running'

cd
