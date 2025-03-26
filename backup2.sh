#!/bin/bash

target_folder=/home/user/practicebash/backexample1 #replace user with home directory name
source_folder=/home/user/practicebash/example1  #replace user with home directory name

#check if the folder that we want to backup exists
if [ -d $source_folder ] 
then
 echo "Directory exists" >> /dev/null
else
  echo "Directory not found, therefore backup failed"
  exit 1
fi

#check to see if rsync is installed 
if ! command -v rsync > /dev/null 2>&1
then
  echo "This script requires rsync to be installed."
  echo "Please use your distribution package manager to install"
exit 2
fi

#To add current date
current_date=$(date +%Y-%m-%d)

#To run backup
rsync_options="-avb --backup-dir=/home/user/practicebash/mod1_$current_date --delete"

$(which rsync) $rsync_options $source_folder $target_folder >> backup_$current_date.log
