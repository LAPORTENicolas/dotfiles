#!/usr/bin/env bash

cpu_list=$(sensors | rg Core | awk '{print $3}' | sed 's/°C//' | sed 's/\.\{1,\}[0-9]//' | sed 's/+//')
cpu_amount=$(printf "$cpu_list" | wc -w)
cpu_tab=$(echo $cpu_list | tr " " "\n")
temp=0

for cpu in $cpu_tab; do
	temp=$(expr $temp + $cpu)
done

temp=$(expr $temp / $cpu_amount)

if [ $temp -lt 50 ]; then
	printf "%%{F#00E5E8} %%{F-}"
elif [ $temp -lt 75 ]; then
	printf "%%{F#F08A4B} %%{F-}"
else
	printf "%%{F#FE4A49} %%{F-}"
fi
