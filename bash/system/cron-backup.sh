#!/bin/bash
#####################################################################
# Script Title: Crontab Backup
# Script Description: This script backs up the system and user cron jobs.
# Author: Sparky
# Date Created: 20190505
# Version:  1.0 Initial script creation
#####################################################################

#if [[ $EUID -ne 0 ]]; then
#    echo "This script must be run as root"
#    crontab -l > /tmp/crontab-`date +%Y%m%d`.bak
#    fi


crontab -l > $HOME/backups/crontab-`date +%Y%m%d`.bak
