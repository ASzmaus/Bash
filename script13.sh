#This script finds in the current directory all files that contain their name in their content.
#!/bin/bash
for a in *; do
if [ -f "$a" ]; then
 b=`cat $a | grep $a`
   if [ -n "$b" ]; then    
       echo "The $a file contains its name in its content"
    else
       echo "The $a file do not contain its name in its content"
    fi
  fi
done

