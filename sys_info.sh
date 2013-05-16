#!/bin/bash

clear
selection=2
echo -e " ##########################################################################"
echo -e " \n \t              welcome to System Information Tool \n "
echo    " ##########################################################################"
until [ $selection -eq "9" ]; do
clear
echo    " ##########################################################################"
echo -e "\n \t                Select your input for More Info "
echo -e "\n \t  		1: User Information "
echo -e "\n \t 		2:  Login Information and Uptime "
echo -e "\n \t  		3:  CPU Information "
echo -e "\n \t  		4:  Display Information 
         \n \t 		5:  OS information 
         \n \t  		6:  Network Configuration 
         \n \t                9:Exit"
echo -e   " \n ##########################################################################"
echo -e "\n \t 	           Enter your Input : \c" 

read selection

case $selection in

1) clear 
   echo -e "#########################################################################"
   echo "                   Printing Users Logged in on this machine"
   echo    "#########################################################################"
   echo "  "
   echo "  " 
   who 
      echo  -e  " \n#########################################################################"
   echo  -e  "\n Press Any key to Continue to main menu ..........................."
   read -n 1 key
   ;;
2) clear 
   echo -e "#########################################################################"
   echo "                   Printing Login information & Uptime  for this machine"
   echo    "#########################################################################"
   echo "  "
   echo "  " 
   echo "#################CURRENTLY LOGGEND IN AS#########"
   who am i
   echo -e "\n\n"
   echo "################# SYSTEM UPTIME################# "
   uptime 
   echo  -e  "\n #########################################################################"
   echo  -e  "\n Press Any key to Continue to main menu ..........................."
   read -n 1 key
   ;;

3) clear 
   echo -e "#########################################################################"
   echo "                   Printing CPU Information for this machine"
   echo    "#########################################################################"
   echo "  "
   echo "  " 
   echo -e "\n################CPU INFORMATION################ /c"
    cat /proc/cpuinfo | more 
      echo -e   "\n #########################################################################"
   echo  -e  "\n Press Any key to Continue to main menu ..........................."
   read -n 1 key
   ;;
4) clear 
   echo -e "#########################################################################"
   echo "                   Printing Display resolution Information for this machine"
   echo    "#########################################################################"
   echo "  "
   echo "  " 
   xrandr --current 
      echo  -e  " \n#########################################################################"
   echo  -e  "\n Press Any key to Continue to main menu ..........................."
   read -n 1 key;;
5) clear 
   echo -e "#########################################################################"
   echo "                   Printing Display resolution Information for this machine"
   echo    "#########################################################################"
   echo "  "
   echo "  " 
   echo -e "operating system name : `uname -o` "
   echo    "machine type:`uname -m`" 
      echo  -e  " \n#########################################################################"
   echo  -e  "\n Press Any key to Continue to main menu ..........................."
   read -n 1 key;;
6) clear 
   echo -e "#########################################################################"
   echo "                   Printing Network Information for this machine"
   echo    "#########################################################################"
   echo "  "
   echo "  " 
   ifconfig 
      echo  -e  " \n#########################################################################"
   echo  -e  "\n Press Any key to Continue to main menu ..........................."
   read -n 1 key;;
*) echo "Invalid Selection .......Press Any Key to Continue . . . . . . . "
esac
done
#echo -e "\n"
#echo -e  "###############USERS LOGGED IN ##################"

#echo -e "\n\n\n"


