#!/bin/bash

clear
selection=2
echo -e " ##########################################################################"
echo -e " \n \t              welcome to System Information Tool \n "
echo    " ##########################################################################"
until [ $selection -eq "9" ]; do
 
echo -e "\n \t                Select your input for More Info "
echo -e "\n \t  		1: User Information "
echo -e "\n \t 		2:  Login Information and Uptime "
echo -e "\n \t  		3:  CPU Information "
echo -e "\n \t  		4:  Display Information 
         \n \t 		5:  OS information 
         \n \t  		6:  Network Configuration "
echo -e "\n \t 		Enter your Input : \c" 
read selection
done
#echo -e "\n"
#echo -e  "###############USERS LOGGED IN ##################"
#who
#echo -e "\n\n\n"
#echo "#################CURRENTLY LOGGEND IN AS#########"
#who am i
#echo -e "\n\n"
#echo "################# SYSTEM UPTIME################# "
#uptime
#echo -e "\n################CPU INFORMATION################ /c"
#cat /proc/cpuinfo 
