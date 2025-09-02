#!/bin/bash

aqi=$(curl -s https://api.waqi.info/xservices/refresh:6806\?_\=1745260727791 |grep -Po '"value":\s*\K[0-9]+')

if [ -z "$aqi" ]; then
    echo "🌫️ N/A"
else
    echo "$aqi"
fi
