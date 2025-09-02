free_mem=$(cat /proc/meminfo | grep MemFree | awk '{print $2}' | sed 's/ kB//')
used_mem=$(cat /proc/meminfo | grep MemAvailable | awk '{print $2}' | sed 's/ kB//')
mem_total=$(cat /proc/meminfo | grep MemTotal | awk '{print $2}' | sed 's/ kB//')
let mem_free_total=$free_mem+$used_mem

if [ $(expr $mem_total / 2) -lt $mem_free_total ]; then
	printf "%%{F#FE4A49}%%{F-}"
elif [ $mem_free_total -lt $(expr $mem_total / 2) ]; then
	printf "%%{F#F08A4B}%%{F-}"
elif [ $mem_free_total -lt $(expr $mem_total / 2 - $mem_total / 3) ]; then
	printf "%%{F#00E5E8}%%{F-}"
fi
