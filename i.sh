#!/usr/bin/env bash
apt-get update && apt-get install -y git tmux

tmux new -d 'while true; do date; sleep 1; done'
