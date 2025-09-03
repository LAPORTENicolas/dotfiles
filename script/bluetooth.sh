echo "jexec" >/home/nico/loggfg.lh
bluetoothctl devices | grep Bose >/dev/null
if [ $? -eq 1 ]; then
	bluetoothctl connect C8:7B:23:54:EE:DD
fi
