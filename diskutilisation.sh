#!/bin/bash

# DISK_USAGE=$(df -hT | grep xfs)
# DISK_THRESHOLD=30 #real projects, it is usually 75


# while IFS= read -r line #IFS,internal field seperatpor, empty it will ignore while space.-r is for not to ingore special charecters like /
# do
#     USAGE=$(echo $line | grep xfs | awk -F " " '{print $6F}' | cut -d "%" -f1)
#     PARTITION=$(echo $line | grep xfs | awk -F " " '{print $NF}')
#     if [ $USAGE -ge $DISK_THRESHOLD ]
#     then
#         echo "$PARTITION is more than $DISK_THRESHOLD, current value: $USAGE. Please check"
#     fi
# done <<< $DISK_USAGE


DISK_USAGE=$(df -hT)
DISK_THRESHOLD=5%

while IFS= read -r line
do 
    USAGE=$(echo $line)
    PARTITION=$(echo $line)
    if [if $USAGE is -ge $DISK_THRESHOLD]
    then
        echo "$PARTITION is more than $DISK_THRESHOLD, current value is: $USAGE, please check the partion"
    fi
done <<< $DISK_USAGE