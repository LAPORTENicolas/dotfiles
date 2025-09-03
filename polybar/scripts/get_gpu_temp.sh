#!/usr/bin/env bash

temp=$(nvidia-smi | rg "MiB" | awk 'NR==1{print $3}' | sed 's/C//')

if [ $temp -lt 63 ]; then
	printf "%%{F#00E5E8}󰢮%%{F-}"
elif [ $temp -lt 75 ]; then
	printf "%%{F#F08A4B}󰢮%%{F-}"
else
	printf "%%{F#FE4A49}󰢮%%{F-}"
fi
