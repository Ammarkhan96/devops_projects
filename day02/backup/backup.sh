#!/bin/bash

<<note 
This simple bash script takes a backup.
note

# Directories to backup
backup_source="/home/ammar-khan/task_folder/day02"

# Backup destination
backup_dest="/home/ammar-khan/task_folder/day02/backup"

# Check if backup destination exists, if not, create it
if [ ! -d "$backup_dest" ]; then
        mkdir -p "$backup_dest"
        echo "Created backup directory $backup_dest"
else
        echo "Backup directory $backup_dest already exists"
fi

# Create archive filename with the current date and time (proper format for hours, minutes, and seconds)
backup_file="$backup_dest/backup-$(date +%Y-%m-%d-%H-%M-%S).zip"

# Create the backup
zip -r $backup_file $backup_source

# Print status message
echo "Backup of $backup_source completed and saved as $backup_file"

