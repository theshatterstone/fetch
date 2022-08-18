#!/bin/bash
# This is a sysfetch script to show system information, as well as a cool logo to go with it,
# inspired by Neofetch. This is my own custom script, with any due credits being given below:
#
#
os=$(cat /etc/os-release | grep "NAME" | cut -b 6-)
dewm=$(wmctrl -m | grep "Name" | cut -b 6-)
kernel=$(uname -r)
uptime=$(uptime -p | cut -b 3-)
#disk=$(df -h --output=used,alail )
battery=$(cat /sys/class/power_supply/BAT1/capacity)
batstat=$(cat /sys/class/power_supply/BAT1/status)
cpu=$(cat /proc/cpuinfo | grep "name" | uniq | cut -b 14-)
#gpu=$(neofetch --off | grep "GPU" | cut -b 19- )
#mem="none"

#The following if statement fixes qtile being called LG3D because of Java issues

#if (($dewm=="LG3D"))
#then
#    dewm="qtile"
#fi

echo    "                 "
echo    " _____________  | $USER @ $HOSTNAME"
echo    " ||         ||  | OS: $os"
echo    " ||         ||  | DE/WM: $dewm"
echo    " ||         ||  | Kernel: $kernel"
echo    " ||_________||  | Uptime: $uptime"
echo    " ||  + + +  ||  | Shell: $SHELL"
echo    "     _|_|_      | Battery: $battery%, $batstat"
echo    "    (_____)     | CPU: $cpu"
#echo    "  | GPU: $gpu"
#echo    "  | Memory: $mem
