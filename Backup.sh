#!/bin/bash

source_directory="/home/ujjwal/project"
target_directory="/home/ujjwal/backup"

current_time=$(date "+%Y-%m-%d-%H-%M-%S")

backup_file="$target_directory/$current_time.tgz"

#Checking if source directory exist

if [ ! -d "$source_directory" ]; then
    echo "Source directory does not exist!"
    exit 1
fi

#Checking if trget directory exist

if [ ! -d "$target_directory" ]; then
    mkdir -p "$target_directory"
fi



echo "Taking Backup on $current_time"

tar -czf "$backup_file" -C "$(dirname "$source_directory")" "$(basename "$source_directory")"

#Check if the backup was succesfull

if [ $? -eq 0 ]; then
    echo "Backup completed successfully: $backup_file"
else
    echo "Backup failed!"
fi
