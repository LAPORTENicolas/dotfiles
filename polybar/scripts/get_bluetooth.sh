#!/usr/bin/env bash

COLOR="#2E41E8"
SEPARATOR="%%{F$COLOR}  %%{F-}"

timeout 2s bluetoothctl status >/dev/null 2>&1
if [ $? -eq 124 ]; then
	printf "%%{F#FE4A49} %%{F-}"
	exit 0
fi

# Récupère les noms des périphériques connectés
connected_names=()
for addr in $(bluetoothctl devices | awk '{print $2}'); do
	if bluetoothctl info "$addr" | grep -q "Connected: yes"; then
		name=$(bluetoothctl info "$addr" | awk -F': ' '/Name/ {print $2; exit}')
		name_tmp=$(echo "$name" | awk '{print $1}')
		if [ "$name_tmp" == "Bose" ]; then
			connected_names+=("🎧")
		else
			connected_names+=("${name:-$addr}")
		fi
	fi
done

# Si aucun, on renvoie un message plus discret
if [ ${#connected_names[@]} -eq 0 ]; then
	printf "$SEPARATOR"
	exit 0
fi

# Construit la chaîne finale avec séparateur
joined="${connected_names[0]}"
for ((i = 1; i < ${#connected_names[@]}; i++)); do
	joined+="$SEPARATOR${connected_names[i]}"
done

# Affiche pour Polybar
#if [ ${connected_names[@]} -eq 1 ]; then
if [ ${#connected_names[@]} -eq 1 ]; then
	printf "$joined$SEPARATOR"
else
	printf "$joined"
fi
