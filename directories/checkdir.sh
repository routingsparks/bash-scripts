#!/bin/bash
#####################################################################
# Script Title: Directory creation
# Description: Checks is directory is created, if not creates it
# Written By: Dennis Perrone
# Date Created: 2017-01-29
#####################################################################

echo "Hello, $USER!"
echo "Which directory would you like to check? Use absolute path."
read dirpath
if [[ -d $dirpath ]]; then
	echo "Directory exists.";
	else
		echo "Directory doesn't exist, would you like to create it? [Y/N] "
		read -n 1 -s makedir
	if [ $makedir == "Y" ]; then
		echo "Creating the new directory."
		mkdir -p $dirpath
	else 
		echo "Okay, exiting script now."
		exit 1
	fi
fi
