perc=$(cat /sys/class/power_supply/BAT1/capacity)

if [ $(cat /sys/class/power_supply/ACAD/online) -eq 1 ]; then
	if [ $PRINT_BAT -eq 1 ]; then
		if [ $perc -lt 79 ]; then
			printf "%%{F#54D534}󰂐 $perc%%%%{F-}"
		else
			printf "%%{F#54D534}󱟢 $perc%%%%{F-}"
		fi
	else
		if [ $perc -lt 79 ]; then
			printf "%%{F#54D534}󰂐 %%{F-}"
		else
			printf "%%{F#54D534}󱟢 %%{F-}"
		fi
	fi
	exit 0
fi

rand=$((RANDOM % 2 + 1))
if [ $perc -lt 30 ]; then
	if [ $rand -eq 1 ]; then
		printf "%%{F#FE4A49} $perc%%%%{F-}"
	else
		printf "%%{F#FE4A49}%%{F-}"
	fi
elif [ $perc -lt 40 ]; then
	if [ $PRINT_BAT -eq 1 ]; then
		printf "%%{F#F08A4B} $perc%%%%{F-}"
	else
		printf "%%{F#F08A4B} %%{F-}"
	fi
elif [ $perc -lt 75 ]; then
	if [ $PRINT_BAT -eq 1 ]; then
		printf "%%{F#00E5E8} $perc%%%%{F-}"
	else
		printf "%%{F#00E5E8} %%{F-}"
	fi
else
	if [ $PRINT_BAT -eq 1 ]; then
		printf "%%{F#007C77} $perc%%%%{F-}"
	else
		printf "%%{F#007C77} %%{F-}"
	fi
fi
