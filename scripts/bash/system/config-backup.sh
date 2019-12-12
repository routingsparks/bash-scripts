#!/bin/bash
#####################################################################
# Script Title: config-backup.sh
# Script Description: Backups and zips configs.
# Files being backed up:
#   - .config/terminator
#   - .bash_profile
#   - .bashrc
#   - .vim
# Author: routingsparks
# Date Created: 20190202
# Version:  1.0 Initial script creation
#           1.1 Updated script to include functions to combine three
#               separate scripts into this on.
#####################################################################

function config_backup {
    tar -cJpf $HOME/backups/backup-config-`date +%Y%m%d`.tar.xz /home/sparky/{.config/terminator,.bash_profile,.bashrc,.vim}
}

function cron_backup {
    crontab -l > $HOME/backups/crontab-`date +%Y%m%d`.bak
}

function vimwiki_backup {
    tar -cJpf $HOME/backups/backup-vimwiki-personal-`date +%Y%m%d`.tar.xz $HOME/vimwiki/personal-md
    tar -cJpf $HOME/backups/backup-vimwiki-work-`date +%Y%m%d`.tar.xz $HOME/vimwiki/work-md
}

config_backup
cron_backup
vimwiki_backup
