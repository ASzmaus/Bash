#This script will copy all files with a ~ suffix (e.g. file.txt ~) (if any) to the BACKUP directory in the current directory. If the BACKUP directory does not exist, the script creates it. If there is already a file (or some other non-directory) named BACKUP, the script reports an error.
#!/bin/bash
if [ ! -f BACKUP ]; then
if [ ! -d BACKUP ]; then
        		mkdir BACKUP;
  	fi
  	for P in *~; do
                        cp $P  BACKUP
 	 done
else
  	echo "Error"
fi
exit 0
