#!/bin/bash
#Author Mohamed Makthum Mohamed 
clear
selection=2

#welcome banner - is displayed only once when the tool in run for first time

echo -e " ##########################################################################"
echo -e " \n \t              welcome to System Information Tool \n "
echo    " ##########################################################################"

# Main Menu - Control is returned to Main Menu after every successful operation\
# Pressing 9 at the Main menu will exit the program

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

#Switch case operation is based only on Numerical Input  for other Input default message will be thrown 
#After every operation text on the screen is cleared for better display 

case $selection in

# This option display all the users logged in the system  
1) clear 
   echo -e "#########################################################################"
   echo "                   Printing Users Logged in on this machine"
   echo    "#########################################################################"
   echo "  "
   echo "  " 
   who -a
      echo  -e  " \n#########################################################################"
   echo  -e  "\n Press Any key to Continue to main menu ..........................."
   read -n 1 key
   ;;
  
# This option prints current user information and system uptime 

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

# This option prints the cpu information from proc files . If needed further information such as meminfo , etc can be 
# included in the script

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
   
# This option prints display information along with the current resolution used .

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
   
# Use this option to know OS info and Machine type : 32 or 64 bit machine 

5) clear 
   echo -e "#########################################################################"
   echo "                   Printing Operating System Information for this machine"
   echo    "#########################################################################"
   echo "  "
   echo "  " 
   echo -e "operating system name : `uname -o` "
   echo    "machine type:`uname -m`" 
      echo  -e  " \n#########################################################################"
   echo  -e  "\n Press Any key to Continue to main menu ..........................."
   read -n 1 key;;

# This will print all the network interface information on the system . If needed it can be modififed using options 

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



