#!/bin/bash

count_files_in_dir() {
    numfiles=$(ls -l | wc -l)
    echo $numfiles
}

# Ask how many files are in the directory
echo "How many files are in this directory?"


while true; do
    read guess;
    actual=$(count_files_in_dir)

    if [ "$guess" -gt "$actual" ]
    then
        echo "Guess was to high"
    fi

    if [ "$guess" -lt "$actual" ]
    then
        echo "Guess was to low"
    fi

    if [ "$guess" -eq "$actual" ]
    then
        echo "Congratulations!"
        exit 0
    fi
done


