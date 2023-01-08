#!/bin/bash

directory="/home/ubuntu/bsm/enter"
interval=10
log_file="/home/ubuntu/değişenler.txt"
while true; do
  modified_files=$(find "$directory" -maxdepth 1 -mmin -1)
  
 if [ -n "$modified_files" ];  then
  echo "10sn önce değiştirildi" >> "$log_file"
  echo "$modified_files">>"$log_file"
 fi
  echo "Tarih: $(date)">>/home/ubuntu/changes.txt
  echo "" >> /home/ubuntu/changes.txt
  
      sleep "$interval"
      
done