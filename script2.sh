#the script prints those of its arguments which are files with at least 2 occurrences of CPU word inside. There must be a space in front of a word and a space, period or comma in the back.
#!/bin/bash -x
re=' CPU[ .,]'
for i in $@; do
        if [ -f "$i" ]; then
                 b=`grep -o ' CPU[ .,]' pliktest.txt | sed 's/"//g' | wc -w`
                 if [ $b -ge 2 ]; then
                        echo " $i "
                  fi
         fi
done

