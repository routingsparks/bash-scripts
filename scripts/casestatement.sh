#!/bin/bash

case $1 in
	start)
		echo "Starting the process."
		;;
	stop)
		echo "Stopping the process."
		;;
	*)
		echo "I need to hear start or stop."
esac
