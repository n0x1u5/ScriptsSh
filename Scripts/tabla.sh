#!/usr/bin/env bash
# Tabla
clear
echo "[FILA][COLUMNA] "
for FILA in 1 2 3 4 5 6 7 8 9 
do
	for COLUMNA in A B C D E F G H I J
	do
#		if test $COLUMNA = "C"
#			then
#				break
#		fi		
		echo "[$FILA][$COLUMNA]"
	done
done


