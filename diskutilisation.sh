#!/bin/bash
89DISK_USAGE=$(df -hT)
DISK_THRESHOLD=5

while IFS= read -r line
do 
    USAGE=$(echo $line | awk '{print $6}')
    PARTITION=$(echo $line | awk '{print $7}')
    if [ "$USAGE" -ge "$DISK_THRESHOLD" ]
    then
        echo "$PARTITION is more than $DISK_THRESHOLD%, current value is: $USAGE%, please check the partition"
    fi
done <<< "$DISK_USAGE"