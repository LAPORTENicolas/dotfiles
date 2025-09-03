perc=$(cat /sys/class/power_supply/BAT1/capacity)

if [ $(cat /sys/class/power_supply/ACAD/online) -eq 1 ]; then
	if [ $perc -lt 79 ]; then
		printf "%%{F#54D534}󰂐 %%{F-}"
	else
		printf "%%{F#54D534}󱟢%%{F-}"
	fi
	exit 0
fi

rand=$((RANDOM % 2 + 1))

if [ $perc -lt 30 ]; then
	if [ $rand -eq 1 ]; then
		printf "%%{F#FE4A49} %%{F-}"
	else
		printf "%%{F#FE4A49}$perc%%%%{F-}"
	fi
elif [ $perc -lt 40 ]; then
	printf "%%{F#F08A4B} %%{F-}"
elif [ $perc -lt 75 ]; then
	printf "%%{F#00E5E8} %%{F-}"
else
	printf "%%{F#007C77} %%{F-}"
fi
