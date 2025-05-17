#!/bin/bash

#1
mkdir my_folder
cd my_folder || exit


# create two files with some text
echo "this is my_file." > my_file.txt
echo "this is another_file." > another_file.txt

# concatenate another_file.txt to my_file.txt
cat another_file.txt >> my_file.txt

# display the updated content
echo "updated content of my_file.txt:"
cat my_file.txt

# list all files directories in the current directory
echo "files and directories in the current directory:"
ls -lh

# 2
# Create 20 .txt files
for i in {1..20}; do
  echo "This is file number $i" > "file_$i.txt"
  sleep 1  # Ensure unique timestamps
done

# Rename first 5 files to .yml
for i in {1..5}; do
  mv "file_$i.txt" "file_$i.yml"
done

# Print the latest 5 files by creation time
echo "Latest 5 files created:"
ls -lt | head -n 5

# Count total files
total=$(ls | wc -l)
echo "Total number of files: $total"
