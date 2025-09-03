#!/bin/bash

location="reims"

# Récupérer la météo depuis wttr.in
weather=0
weather=$(curl -H 'Cache-control: no-cache' -H 'Pragma: no-cache' -s "wttr.in/$location?format=1&?T?sldkfhjklh" | sed 's/ //')
temp=$(echo $weather | awk '{print $2}' | sed 's/°C//')
let test=$temp
if [ $test -lt 10 ]; then
	printf "%%{F#215AC6} $weather %%{F-}"
elif [ $test -lt 20 ]; then
	printf "%%{F#00E5E8} $weather %%{F-}"
elif [ $test -lt 26 ]; then
	printf "%%{F#F08A4B} $weather %%{F-}"
else
	printf "%%{F#FE4A49} $weather %%{F-}"
fi
unset weather temp
# Afficher la météo
#echo "$weather" | sed "s/ //"
