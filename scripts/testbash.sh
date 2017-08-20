#!/bin/bash

PID=$(ps -ef | grep [f]irefox | awk '{print $2}')
PROCESS=$(ps -ef | wc -l)

# echo "Hello $USER!"
# echo "Firefox is running at $PID"
# echo "There are $PROCESS processes running."
################################################
# Below is the second part of scripting.
################################################
#if ps -ef | grep -q [f]irefox; then
#	echo "Firefox is running";
#	else 
#		echo "Firefox is not running"
#	fi
# ##############################################
# if test -f /etc/passwd; then
#	echo "Password file exists.";
# else echo "Password file doesn't exist";
#	fi
# if test -s /home/sparky/Documents/linux/testdir/directory01/file01; then
#	echo "File exists and has information inside.";
# else echo "File doesn't exist or is empty."
#	fi
################################################
# Below is the third part of scripting.
################################################
echo -n "Say something: "
read STRING
if [[ -z $STRING ]];then
	echo "You didn't say anything"
	else
		echo "Thanks for that."
	fi
