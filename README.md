# Backup Document dir script

A bash script that backups the Document directory as an archive file and saves it to the BACKUPS dir in the home dir

N/B: Change desired file paths for backup in the script variables

## Running installation:

- `BACKUP_PATH` - Path to what to backup
- `DEST_PATH` - Path to where to backup
- Copy the `bash.sh` file to your computer
- Create a `backup_dir` folder in the destination path you defined in the `DEST_PATH` variable in the script
- cd to the destination of the `bash.sh`
- Make the file executable by running the following command from the terminal:
    `chmod u+x backup.sh`
- Then from a terminal run:
    `sudo ./backup.sh`

