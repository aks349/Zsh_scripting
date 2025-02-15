#!/bin/zsh
#Simple debug script
echo "This is my shell info: $SHELL"
set -x #Activate Debugging from here with -x
echo "The next line is my bug"
cp me.sh you.sh
set +x #Deactivate bugging from here with +x 
echo "Debugging is deactivated"
echo "No more plus sign"
