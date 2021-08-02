#this script computes the nth Fibonacci number recursively
#!/bin/bash
Fib(){
if [ $1 == 0 ]; then
        echo 0
elif [ $1 == 1 ]; then
        echo 1
elif [ $1 -gt 1 ]; then
        echo $[ `Fib $[ $1 - 1 ]` + `Fib $[ $1 -2]`]
else
        echo "Enter a number greater than or equal to 0"
fi
}
Fib 9

