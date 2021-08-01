#the script prints the names of those directories from the current directory which contain at least one readable file
#!/bin/bash
for i in */; do
    for k in "$i"/*; do
        if [ -r "$k" ] && [ ! -w "$k" ] && [ ! -x "$k" ]; then
                echo  "$(basename -- $i)"
                break
        else
                echo "There is no file to read"
        fi
 done
done

