#!/usr/bin/env bash
# File: guessinggame.sh

guessinggame (){

local nFiles=$(find -maxdepth 1 -type f | wc -l)

while [[ number -ne nFiles ]]
do
	read -p "Please try to guess, how many files there are in the this directory? Please enter the value -->" number
    if [[ number -eq nFiles ]] && [[ -n "$number" ]]
    then
        echo "#####   Congratulation. U're right. It's $number file(s) in this directory   #####";
        exit
    elif [[  number -gt nFiles ]] && [[ -n "$number" ]]
    then
        echo "It's not the exect number of files in this directory. Please try a lower then $number value"
    elif [[  number -lt nFiles ]] && [[ -n "$number" ]]
	then
	    echo "It's not the exect number of files in this directory. Please try a higher then $number value"
	else
        echo "Please enter some value"
    fi
done

}

guessinggame