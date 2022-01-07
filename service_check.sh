#!/bin/bash
rt=`netstat -tunlp 2>/dev/null | grep 3306 | grep -vE "grep|cat|vim|nano" | awk '{print $6}'|awk -F" " '{print $1}'`
echo $rt

if [ "$rt" = "LISTEN" ]
then
echo 1;
else
echo 0;

fi

