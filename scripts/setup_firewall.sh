#!/usr/bin/env bash

# install the essentials

ufw allow --force ssh
ufw allow --force 8333
ufw allow --force 8333
ufw allow --force 9735
ufw allow --force out 9735
ufw --force enable
