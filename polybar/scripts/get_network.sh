network=$(networkctl | grep routable | awk '{print $2}')
if [ "$network" == "eno1" ]; then
	printf "%%{F#54D534}󰈁%%{F-}"
elif [ "$network" == "wlo1" ]; then
	printf "%%{F#54D534}%%{F-}"
else
	printf "%%{F#D7263D}󰈂%%{F-}"
fi
