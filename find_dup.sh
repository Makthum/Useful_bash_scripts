#!/bin/bash


# Author 
# Mohamed Makthum Mohamed Ikbal
# This script find all the duplicate files in a specified directory based on the MD5 hashing 
# This script prints all the duplicate files along with the path 

clear
echo "#####################################################################"
echo "             Remove Duplicate File Tool                              "
echo "####################################################################"

echo -e "Enter the directory path from root to search \c"
read search_path 
echo -e "Enter where you want to store the log file \c"
read log_path
find $search_path/* -type f -exec md5sum {} \; | awk '{ print $1,"\t",$2 } ' | sort | uniq -d -w 32
