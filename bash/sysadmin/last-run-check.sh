#!/bin/bash

#LASTRUN=$(cat ansible_output-$NOW.txt)
NOW=$(date +%Y%m%d-%H%M%S)
ELAPSED=$((NOW - ANOUT))
ANOUT=ansible_output-$NOW.txt

echo $ELAPSED
#touch $ANOUT

if [[ $ELAPSED -ge 60 ]]; then
	echo "A minute or more has passed since the last time you ran this script."
else
	echo "This script has been ran within the last minute."
fi
