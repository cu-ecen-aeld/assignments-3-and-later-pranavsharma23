#!/bin/bash

writefile=$1
writestr=$2

if [ $# != 2 ]; then
    echo "ERROR: Invalid number of arguments."
    echo "Total number of arguments should be 2."
    echo "The order of arguments should be:"
    echo "   1)Full path of a file including filename"
    echo "   2)Text string which will be written within the file."
    exit 1
fi

mkdir -p $(dirname ${writefile})
touch $writefile
echo $writestr > $writefile

if [ ! -e $writefile ]; then
    echo "ERROR: File not created."
    exit 1
fi

