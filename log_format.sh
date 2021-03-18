#!/bin/bash

cat $1 | while read line
do 
date=$(echo $line | awk '{print ($1" "$2" ")})
date -d "`cut -f1 -d. /proc/uptime` ago" -u
type=$(echo $line | awk '{print ($4)}')
error_msg=$(echo $line | awk '{print ($5$6$7$8$9$10)}')
echo {\"date\":\"$date\"','"\"type\":\"$type\",\"error\":\"$error_msg\""}
done


