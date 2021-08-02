#This script takes three arguments to input file, output file 1, output file 2, which will rewrite all numbers to output file 1 and non-numeric strings to output file 2.
#We allow the existence of multi-character elements
#!/bin/bash -x
for i in $(cat $1); do
re=[0-9]
rel=[a-z]
        if [[ $i =~ $rel ]] || [[ $i =~ .$re ]] || [[ $i =~ $re. ]]; then
                echo "$i" >> $3

        elif  [[ $i =~ $re ]] || [[ $i =~ .$re ]] || [[ $i =~ $re. ]]; then
                echo "$i" >> $2
        fi
done

