#!/bin/bash

BACK_DIR="$HOME/backups"
USB_DIR="/mnt/usbstick/linux-backups/"

#find $BACK_DIR -mtime +7 -type f -delete

if [[ -d $USB_DIR ]]; then
    find $BACK_DIR -mtime +7 -type f -delete
    find $USB_DIR -mtime +7 -type f -delete
else
    find $BACK_DIR -mtime +7 -type f -delete
fi

########################################
# Use the below to test functionality
########################################
#find $BACK_DIR -type f -delete

