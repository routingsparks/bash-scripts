#!/bin/bash

LASTRUN=$(cat lastrun)
NOW=$(date +%s)
ELAPSED=$((NOW - LASTRUN))

if [[ $ELAPSED -ge 60 ]]; then
	echo "A minute or more has passed since the last time you ran this script."
	echo "$NOW" > lastrun;
else echo "This script has been ran within the last minute."
fi
