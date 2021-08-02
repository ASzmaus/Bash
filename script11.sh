#this script calculates the n-th Fibonacci number iteratively
#!/bin/bash
echo -n " Enter the number n:"
read N
FIB=0
ELEMENT1=0
ELEMENT2=1
if [ $N == 0 ]; then
        FIB=0
elif [ $N == 1 ]; then
        FIB=1
elif [ $N -gt 1 ]; then
        for ((i=2; $i<=$N; i++)); do
                let FIB=ELEMENT1+ELEMENT2
                let ELEMENT1=ELEMENT2
                let ELEMENT2=FIB
        done
        echo "Nth fibonacci number  ($N) = $FIB "
else
        echo "Enter a number greater than or equal to 0"
        exit 1
fi
exit 0
