#This script reads a file containing numbers (one per line) and prints their maximum, minimum and sum. If the file is empty, it prints the appropriate message. The file name is to be given as a script parameter.
#Multiple files given as arguments can be used in this script. It uses subroutines.
#!/bin/bash
max(){
        MAX=`cat $1 | sort -n | tail -1`
}

min(){
        MIN=`cat $1 | sort -n | head -1`
}

sum(){
SUM=0
    for P in $(cat $1); do
               let SUM+=P
    done
}

for K in $@; do
        max $K
        min $K
        sum $K
        echo "$K:"
        echo "sum $SUM"
        echo "max $MAX"

