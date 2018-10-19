#!/usr/bin/env bash

# install the essentials

echo "Installing prerequisites"
apt-get update && apt-get install -y docker-compose ufw ruby unattended-upgrades fail2ban
