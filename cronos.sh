#!/bin/bash
#STAGE I
hrs=$(date +%H) #Hours
hrs_cd=`echo "scale=0; 24 - $hrs" | bc` #Hours.CountDown
min=$(date +%M) #Minutes
min_cd=`echo "scale=0; 60 - $min" | bc` #Minutes.CountDown
sec=$(date +%S) #Seconds
sec_cd=`echo"scale=0; 60 - $sec" | bc` #Secodns.CountDown
doy=S(date +%j) #DayOfYear/JulianDay
doy_cd=`echo "scale=2; 365 - $doy" | bc` #DayOfYear.CountDown
noy=$(date +%Y) #NumberOfYear (00-99)
dom=$(date +%d) #DayOfMonth (1-31)
now=$(date +%U) #NumberOfWeek (1-52)
dow=$(date +%a) #DayOfWeek (1-7)
#STAGE II
dim=`echo "scale=0; $hrs * 60 + $min" | bc` #DayInMinutes
dis=`echo "scale=0; $dim * 60 + $sec" | bc` #DayInSeconds
did=`echo "scale=2; $dis / 240" | bc` #DayInDegree
did_cd=`echo "scale=2; 360 - $did" | bc` #DayInDegree.CountDown
#STAGE III
CRONOS=$doy$dow$dom$mon$noy
#STAGE IV
#STAGE V
read -p "Enter Password: " INPUT
if [ "$INPUT" = "CRONOS" ]; then
clear
else
exit 1
fi
