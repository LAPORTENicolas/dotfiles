mem_free=$(cat /proc/meminfo | grep MemAvailable | awk '{print $2}' | sed 's/ kB//')
mem_total=$(cat /proc/meminfo | grep MemTotal | awk '{print $2}' | sed 's/ kB//')
let used_mem=$mem_total-$mem_free

if [ $used_mem -lt $(expr $mem_total / 3) ]; then
	printf "%%{F#00E5E8}%%{F-}"
elif [ $used_mem -lt $(expr $mem_total / 2) ]; then
	printf "%%{F#F08A4B}%%{F-}"
else
	printf "%%{F#FE4A49}%%{F-}"
fi
