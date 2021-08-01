#the script writes to file P those of its arguments, which are directories containing at most any 11 entries (any files or directories, also hidden). The P file name must be entered from the keyboard. In the P file we should write the name of the directory and the number of items.
#!/bin/bash
echo -n " Enter a file name "
read FILE
for i in $@; do
        if [ -d "$i" ]; then
                for k in "$i"/*; do
                        let NUMBEROFITEMS+=1
                        if [ "$NUMBEROFITEMS" -le 3 ]; then
                                echo -n "Directory: $i " >> $FILE
                                echo " Number of items:  $NUMBEROFITEMS" >> $FILE
                        fi
                done
        fi
done

