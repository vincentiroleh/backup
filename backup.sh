#!/bin/bash

####################################
#
# Backup Document dir script.
#
####################################

# Instruction
<< 'INSTRUCTION-COMMENT'
    A bash script that backups the Document directory
    as an archive file and saves it to the BACKUPS dir in the home dir

    N/B: Change desired file paths for backup below

    Running installation:
    - Place script in the home dir
    - Make the file executable by running the following command:
        `chmod u+x backup.sh`
    - Then from a terminal run:
        `sudo ./backup.sh`

INSTRUCTION-COMMENT


#TODO: What to backup.
BACKUP_PATH="/home/iroleh/Documents"

#TODO: Where to backup to.
DEST_PATH="/home/iroleh/backup_dir/"

#TODO: Create archive filename.

DATE=`date +%d%m%Y`
BACKUP="doc_"
EXT=".tar"
FILE_NAME=$DEST_PATH$BACKUP$DATE$EXT

# Print start status message.
echo "Backing up $BACKUP_PATH to $FILE_NAME"
date
echo

# Backup the files using tar.

tar cfz $FILE_NAME $BACKUP_PATH

# Print end stataus message
echo
echo "Backup finished"
date

# Long listing of files in $dest to check file sizes.
ls -lh $FILE_NAME 