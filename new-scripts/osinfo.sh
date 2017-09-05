#!/bin/bash
#####################################################################
# Script Title: dot-config.sh
# Script Description: Installation of dot-config files.
# Author:
# Date Created: 2017-09-04
# Version:  1.0 Initial script creation
#           1.1 Modified line 7
#####################################################################

gather_os_info(){
  OS_NAME=$(uname -s 2> /dev/null)
  OS_NAME_L=$( echo "$OS_NAME" | tr '[:upper:]' '[:lower:]' )
  OS_VERSION=$(uname -r)
  OS_VERSION_L=$( echo "$OS_VERSION" | tr '[:upper:]' '[:lower:]' )
}

gather_os_info

if [[ ! -d $HOME/Downloads/dot-files ]]; then
  echo "Creating Downloads/dot-files directory."
  mkdir -p ~/Downloads/dot-files
else
  echo "$HOME/Downloads/dot-files directory already exists."
fi

git clone --recursive https://github.com/routingsparks/dot-files.git /$HOME/Downloads/dot-files
