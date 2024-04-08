#!/bin/bash

# Compress files from folder to one file.
# Customize IN and OUT.

DATE=$(date '+%Y_%m_%d')

# Output archive
OUT="/home/yourdir/"$DATE"_backup.7z"

# Input folder
IN="/home/yourdir/with/files/*"

echo '### Compressing ###'
7za a -t7z -mx=9 -mmt=12 -stl $OUT $IN

echo '### Testing ###'
7za t $OUT
