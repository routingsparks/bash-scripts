#!/bin/bash

#The purpose of this script is to list all contents in a directory.
#
#The location variable is the first argument and is to define the directory which you want to indxed.
#The filename variable is the second variable and is used to define the filename of the indexed directory.


location=$1
filename=$2

ls $location > $filename
echo "Script is complete and has indexed the $location."
echo "##########"
echo "Displaying contents of $filename."
echo "##########"
cat $filename
