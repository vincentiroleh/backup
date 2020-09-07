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
backup_files="/home/iroleh/Documents"

#TODO: Where to backup to.
dest="/home/iroleh/backup"

#TODO: Create archive filename.
date=`date +%d%m%Y`
hostname=$(hostname -s)
archive_file=".tar"

# Print start status message.
echo "Backing up $backup_files to $dest/$archive_file"
date
echo

tar czf $dest/$archive_file $backup_files

# Print end stataus message
echo
echo "Bakup finished"
date

# Long listing of files in $dest to check file sizes.
ls -lh $dest