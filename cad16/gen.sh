#!/usr/bin/bash

# Find all subdirectories in the current directory
find . -maxdepth 1 -mindepth 1 -print0 -type d | while read -d $'\0' dir; do
  # Extract the directory name and create the corresponding filename
  dir=$(basename "$dir")
  filename="$dir/$dir.txt"
  echo "Creating $filename..."
  
  # Write the content to the file
  echo "cir1.v" > "$filename"
  echo "0" >> "$filename"
  echo "cir2.v" >> "$filename"
  echo "0" >> "$filename"
done