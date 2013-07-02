
#This script is used to compress and split Huge file for easy transfer of data . This script can also concatenate the split files "
# Author Mohamed Makthum Mohamed 
# Date : July 1st 2013
echo " #######################################################"
echo " #######################################################"
echo " #####           File Splitter #########################"

selection= 8
until [ $ selection -eq 3 ]; do 
clear 
read selection
case $selection in 
1) echo " Compression Utility Selected "
   echo "Enter File path from root"
   read path 
   echo "Enter File Name"
   read filename
   mkdir temp
   cd temp 
   gzip -c $path/$filename > compressed.gz
   split -b 524288 compressed.gz
   41
