#!/usr/bin/env bash

LOCAL_IP=ip -o route get 8.8.8.8 | sed -e 's/^.* src \([^ ]*\) .*$/\1/'
NODE_ALIAS="gthunder"
