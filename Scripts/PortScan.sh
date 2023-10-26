#!/bin/bash

function ctrl_c(){ 
	echo -e "\n\n[1] Saltendo...\n"
	tput cnorm; exit 1
}

# Ctrl+C 

trap ctrl_c SIGINT

declare -a ports=( $(seq 1 65535) )

function checkPort(){

	(exec 3 /dev/tcp/$1/$2) 2>/dev/null

	if [ $? -eq 0 ]; then 
		echo "[+] Host $1 - Port $2 (OPEN)"
	fi

	exec 3-&-
	exec 3>&- 
}

tput civis # Ocultar el cursor


if [ $1 ]; then 
	for port in ${ports[@]}; do
 		checkPort $1 $port &
	done
else 
	echo -e "\n[1] Uso: $0 <ip-address>\n"
fi

wait

tput cnorm