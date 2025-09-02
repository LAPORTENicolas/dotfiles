#!/bin/bash

# Emplacement (par exemple Paris, ou une ville)
location="Reims"

# Récupérer la météo depuis wttr.in
weather=$(curl -s "wttr.in/$location?format=1&?T" | sed 's/ //')
temp=$(echo $weather | awk '{print $2}' | sed 's/°C//')
let test=$temp
if [ $test -lt 5 ]; then
	printf "%%{F#215AC6} $weather %%{F-}"
elif [ $test -lt 15 ]; then
	printf "%%{F#00E5E8} $weather %%{F-}"
elif [ $test -lt 26 ]; then
	printf "%%{F#F08A4B} $weather %%{F-}"
else
	printf "%%{F#FE4A49} $weather %%{F-}"
fi
# Afficher la météo
#echo "$weather" | sed "s/ //"
