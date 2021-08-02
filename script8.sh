#This script reads a file containing numbers (one per line) and prints their maximum, minimum and sum. If the file is empty, it prints the appropriate message. The file name is to be given as a script parameter.

#!/bin/bash -x

if [ ! -s "$1" ]; then
        echo "This file is empty"
else
        echo "max " `cat $1 | sort -n | tail -1`
        echo "min " `cat $1 | sort -n | head -1`
for P in $(cat $1); do
        let SUM+=P
done
        echo "sum $SUM"
fi
