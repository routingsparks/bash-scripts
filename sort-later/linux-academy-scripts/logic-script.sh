#!/bin/bash

#The purpose of this script is to list all contents in a directory.
#The location variable is the first argument and is to define the directory which you want to indxed.
#The filename variable is the second variable and is used to define the filename of the indexed directory.


location=$1
filename=$2

# The following if statement will echo error if no location is provided following script command.

if [[ -z "$location" ]]
then
	echo "Please provide a location arugment."
	exit 0
fi

if [[ -z "$filename" ]]
then
	echo "Please provide an output filename."
	exit 0
fi


ls $location > $filename
echo "Script is complete and has indexed the $location."
echo "##########"
echo "Displaying contents of $filename."
echo "##########"
cat $filename
