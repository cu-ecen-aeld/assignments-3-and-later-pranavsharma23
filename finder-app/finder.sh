#!/bin/bash

filesdir=$1
searchstr=$2

if [ $# != 2 ]; then
    echo "ERROR: Invalid number of arguments."
    echo "Total number of arguments should be 2."
    echo "The order of arguments should be:"
    echo "   1)File Directory Path."
<<<<<<< HEAD
    echo "   2)String to be searched in the specfied directory path."
=======
    echo "   2)String to be searched in the specified directory path."
>>>>>>> main
    exit 1
fi

if [ ! -d $filesdir ]; then
<<<<<<< HEAD
    echo "File directory entered does not represent a directory on the filesystem"
=======
    echo "File directory entered does not represent a directory on the filesysem"
>>>>>>> main
    exit 1
fi


echo The number of files are $(find $filesdir -type f | wc -l) and the number of matching lines are $(grep -r -c -h $searchstr $filesdir | awk '{n+=$0} END {print n}')

<<<<<<< HEAD
#Use of awk command was taken from stackoverflow
=======
# Use of awk command was taken from stackoverflow
>>>>>>> main
