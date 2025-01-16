#!/bin/bash
DISK_USAGE+$(df -hT)
DISK_THRESHOLD=5


while IFS= read -r line
do
    USAGE=$(echo $line | awk '{print $6}' | cut -d "%" -f1)
    PARTITION=$(echo $line |awk '{print $7}')
    if [$USAGE -ge $PARTITION]
    then
        echo "The $PARTITION is More than the $USAGE, The Current Disk Usage is: $USAGE, please clean the disk"check the file system"
        fi
done <<< $DISK_USAGE
