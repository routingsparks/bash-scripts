#!/bin/bash

BACK_DIR="$HOME/backups"

find $BACK_DIR -mtime +7 -type f -delete

########################################
# Use the below to test functionality
########################################
#find $BACK_DIR -type f -delete

