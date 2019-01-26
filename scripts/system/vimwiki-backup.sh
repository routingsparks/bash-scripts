#! /bin/bash

# Vimwiki backup script
#
# Files being backed up:
#   $HOME/vimwiki/personal-md
#   $HOME/vimwiki/work-md

tar -cJpf $HOME/backups/backup-vimwiki-personal-`date +%Y%m%d`.tar.xz /home/sparky/vimwiki/personal-md
tar -cJpf $HOME/backups/backup-vimwiki-work-`date +%Y%m%d`.tar.xz /home/sparky/vimwiki/work-md
