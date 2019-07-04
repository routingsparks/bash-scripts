#! /bin/bash

# Config file backup script
#
# Files being backed up:
#   .atom
#   .config/terminator
#   .bash_profile
#   .bashrc
#   .vim

tar -cJpf $HOME/backups/backup-config-`date +%Y%m%d`.tar.xz /home/sparky/{.atom,.config/terminator,.bash_profile,.bashrc,.vim}
