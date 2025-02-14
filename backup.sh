#!/bin/bash


<<info
THis shell script will take periodic backups


eg. 
./backup.sh <source> <dest>
info

src=$1
dest=$2
timestamp=$(date '+%Y-%m-%d-%H-%M')

zip -r "$dest/backup-$timestamp.zip" $src > /dev/null

aws s3 sync "$dest" s3://tws-backups-d-11
echo "backup done"
