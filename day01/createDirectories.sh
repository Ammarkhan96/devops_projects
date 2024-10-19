#!/bin/bash

# Check if the correct number of arguments are passed
if [ $# -ne 3 ];then
	echo "Usage: $0"
	exit 1
fi

# Assigning arguments to variables
dir_name=$1
start_num=$2
end_num=$3

# Loop to create directories dynamically
for ((i=start_num; i<=end_num; i++))
do
	mkdir "${dir_name}${i}"
done

echo "Directories from ${dir_name}${start_num} to ${dir_name}${end_num} created successfully!"
