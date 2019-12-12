#!/bin/bash

BACK_DIR="$HOME/backups"

find $BACK_DIR -mtime +7 -type f -delete
#find $BACK_DIR -mtime +7 -type f
#find $BACK_DIR -mtime +3 -type f 
