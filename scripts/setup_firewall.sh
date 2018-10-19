#!/usr/bin/env bash

# install the essentials

ufw allow ssh
ufw allow 8333
ufw allow 8333
ufw allow 9735
ufw allow out 9735
ufw enable
