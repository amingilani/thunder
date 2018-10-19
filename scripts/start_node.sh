#!/usr/bin/env bash
cd "$(dirname "$0")"

tmux new-session -d 'docker-compose up -f ../docker-compose.yml up'

echo 'Tmux session now running, run `tmux a` to connect.'
