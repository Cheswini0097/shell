#!/bin/bash
echo "All the variables passed through the script: $@"
echo "Number of variable passed: $#"   # ro check the number of variable passed $#
echo "Script Name: $0"
echo "current working direcortory: $pwd"
echo "Home directory of the current user: $Home"
echo "pid of the script executeing now: $$"
sleep 100 &
echo "PID of the last background command: $!"
