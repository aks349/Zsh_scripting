#!/bin/zsh
# this is a until loop
counter = 1
until [ $counter -gt 10 ]; do
    echo $counter
    ((counter++))
done
echo "until loop completed".


# until [...]; do
#   do_something here
# done