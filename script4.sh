#The script takes the name of a file as the first argument and will count the number of all numbers and letters in that file. The program is also supposed to calculate the sum of all numbers. The file can of course have a variable number of lines and elements per line. There will be no token numbers in the file mixed with letters or other characters.
#!/bin/bash -x
TEMP=0
for i in $(cat $1); do
re=[0-9]
rel=[a-z]
        if  [[ $i =~ $re ]] ; then
                let TEMP+=1
                let SUM+=i
        elif [[ $i =~ $rel ]]; then
                let VAR+=1
        fi
done
echo " File $0 contains $TEMP numbers and $VAR letters. Sum of all numbers is $SUM"

