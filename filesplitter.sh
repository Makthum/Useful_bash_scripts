
#This script is used to compress and split Huge file for easy transfer of data . This script can also concatenate the split files "
# Author Mohamed Makthum Mohamed 
# Date : July 1st 2013
echo " #######################################################"
echo " #######################################################"
echo " #####           File Splitter #########################"
size=256M
selection=8
zero=0
until [ $selection -eq "3" ]; do 
clear 
read selection
case $selection in 
1) echo " Compression Utility Selected "
   
   echo " Enter Minimum file size [ default 256M ] "
   read size 
   
   
   echo "Enter File path from root"
   read path 
  cd $path
   echo "Enter File Name"
   read filename
   mkdir tempqw
   cd tempqw
   
   gzip -c $path/$filename > compressed.gz
   split -d -a 1 -b $size compressed.gz 0
   temp_count=$(find . -type f -nowarn -maxdepth 1 \( ! -iname ".*" \) | wc -l)

for ((i=0;i<$temp_count-1;i++))
   do
   mkdir $i
   done    
for ((i=0;i<$temp_count-1;i++)) 
   do 
   tempfilename="$zero$i"
   mv $tempfilename $path/tempqw/$i/   
   done
;;
*) echo " invalid selection"
esac
done
