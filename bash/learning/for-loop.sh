#!/bin/bash

depts=("it" "hr" "sales")

clear
#echo $depts
#echo ${depts[*]}
echo
echo "Departments Available"
echo "------------------------"
for x in "${depts[@]}"
do
    echo " $x department"
done
echo
