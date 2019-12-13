#!/bin/bash

if [ -f /etc/passwd -a -x /usr/sbin/adduser ]; then
	echo "It's true"
else
	echo "Not true"
fi

if [[ -f /et/passwd && -x /usr/sbin/adduser ]]; then
	echo "It's true"
else
	echo "Not true"
fi
