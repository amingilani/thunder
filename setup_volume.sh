#!/usr/bin/env bash

MOUNT_PATH="/mnt/lightning-data"
FILE_SYSTEM_PATH="/dev/disk/by-id/scsi-0Linode_Volume_lightning-data"

mkdir $MOUNT_PATH
mount $FILE_SYSTEM_PATH

echo "$FILE_SYSTEM_PATH $MOUNT_PATH ext4 defaults 0 2" >> /etc/fstab
