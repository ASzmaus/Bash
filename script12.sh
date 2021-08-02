#This script checks to see if it has a 2nd and nth parameter and prints the appropriate information. The value of n is to be entered from the keyboard. If n = 2 then the displayed message is to be displayed only once.
#!/bin/bash
echo -n "Enter a number n "
read n
if [ -z "$2" ]     
  then
    echo "Script has not got second parameter"
else
  echo "Script has the second  parameter"
fi
if [ "$n" -ne "2" ] 
  then
  if [ "$#" -lt "$n" ]
  then
    echo "Script has't got n-th parameter"
  else
  echo "Script has n-th parameter"
  fi
fi

