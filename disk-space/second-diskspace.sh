#!/bin/bash


# Define variables
ROOTDIRSPACE=$(df -h / | tail -1 | awk '{print $5}' | tr -d "%")
HOMEDIRSPACE=$(df -h /home | tail -1 | awk '{print $5}' | tr -d "%")
TMPDIRSPACE=$(df -h /tmp | tail -1 | awk '{print $5}' | tr -d "%")

# Define admin email for alerts
ADMIN=root@localhost
# Define alert level
INFORM=50
ALERT=90

if [[ $ROOTDIRSPACE -ge 50 ]]; then
    echo "Your disk space is above 50%. Please start clearing files."
    else
        exit 1
        fi
