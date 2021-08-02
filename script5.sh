#This script takes three arguments to input file, output file 1, output file 2, which will rewrite all numbers to output file 1 and non-numeric strings to output file 2.
#The input file should contain only single characters separated by a space.
#If there is any string that has more than 1 character, the script is to terminate and the output files should be deleted.
#!/bin/bash -x
for i in $(cat $1); do
re=[0-9]
rel=[a-z]
        if [[ $i =~ .$re ]] || [[ $i =~ $re. ]]; then
                echo "there is a multi-character element"
                `rm -f $2`
                `rm -f $3`
                exit 1
        elif  [[ $i =~ $re ]] ; then
                echo "$i" >> $2
        elif [[ $i =~ $rel ]]; then
                echo "$i" >> $3
        fi
done
