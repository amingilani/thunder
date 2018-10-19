#!/usr/bin/env bash

tmux new-session -d 'docker-compose up -f ../docker-compose.yml up'

echo 'Tmux session now running, run `tmux a` to connect.'
