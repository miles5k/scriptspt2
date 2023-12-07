#!/bin/bash

# Directory to store backups

backup_dir="/home/miles/backup_directory"
timestamp=$(date +"%Y-%m-%d_%H-%M-%S")
backup_filename="backup_$timestamp.tar.gz"

# List of important directories and files

important_files=(
    "/etc/passwd"
    "/etc/fstab"
    "/var/log/syslog"
    # Add more files or directories here as needed
)

# Create backup directory if it doesn't exist
mkdir -p "$backup_dir"

# Create a tarball of important files
tar -czvf "$backup_dir/$backup_filename" "${important_files[@]}"

# Check if the backup was successful
if [ $? -eq 0 ]; then
    echo "Backup created successfully: $backup_filename"
else
    echo "Backup creation failed."
fi
