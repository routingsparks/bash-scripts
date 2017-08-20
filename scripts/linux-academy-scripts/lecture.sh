#!/bin/bash

echo "My script is going to run."
ls /etc > ls-contents.txt
cat ls-contents.txt | grep cron
rm ls-contents.txt
