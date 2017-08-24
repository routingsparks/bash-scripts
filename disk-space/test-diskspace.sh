#!/bin/bash

ROOTDIRSPACE=$(df -h / | tail -1 | awk '{print $5}' | tr -d "%")
HOMEDIRSPACE=$(df -h /home | tail -1 | awk '{print $5}' | tr -d "%")
TMPDIRSPACE=$(df -h /tmp | tail -1 | awk '{print $5}' | tr -d "%")
BOOTDIRSPACE=$(df -h /boot | tail -1 | awk '{print $5}' | tr -d "%")

case $ROOTDIRSPACE in
	100)
		echo "The / partition is full."
		echo "Emergency! Disk is full!" | mail -s "Disk emergency" root@localhost
        ;;
    [0]*[1-9])
        echo "The / partion is currently under 10%."
        ;;
	[1-7]*[0-9])
		echo "The / partition is currently $ROOTDIRSPACE% full."
		;;
	[8-9]*)
		echo "Start clearing files. I am currently $ROOTDIRSPACE% full."
		;;
	*)
		echo "Hmm, I expected to see some kind of percentage."
esac

case $HOMEDIRSPACE in
	100)
		echo "The / partition is full."
		echo "Emergency! Disk is full!" | mail -s "Disk emergency" root@localhost
		;;
    [1-9]*)
        echo "The /home partition is under 10% currently $HOMEDIRSPACE% full."
        ;;
	[1-7]*[0-9])
		echo "The /home partition is currently $HOMEDIRSPACE% full."
		;;
	[8-9]*[0-9])
		echo "Start clearing files. The /home partition is  currently $HOMEDIRSPACE% full."
		;;
	*)
		echo "Hmm, I expected to see some kind of percentage."
esac

case $BOOTDIRSPACE in
	100)
		echo "The /boot partition is full."
		echo "Emergency! Disk is full!" | mail -s "Disk emergency" root@localhost
		;;
    [0]*[1-9])
        echo "The /boot partition is under 10% currently $BOOTDIRSPACE% full."
        ;;
	[1-7]*[0-9])
		echo "The /boot partition is currently $BOOTDIRSPACE% full."
		;;
	[8-9]*[0-9])
		echo "Start clearing files. The /boot partition is  currently $BOOTDIRSPACE% full."
		;;
	*)
		echo "Hmm, I expected to see some kind of percentage."
esac

