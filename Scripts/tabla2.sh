#!/usr/bin/env bash

# @Author: AlexHernandez <alex>
# @Date:   05-11-2018
# @Email:  ahernandezmartin@educa.madrid.org
# @Last modified by:   alex
# @Last modified time: 05-11-2018




# Tabla
clear
echo "[FILA][COLUMNA] "
for FILA in 1 2 3 4 5 6 7 8 9
do
	for COLUMNA in A B C D E F G H I J
	do
		if test $COLUMNA = "J"
			then
				break 2 #Rompe en la segunda posicion del primer for, es decir, solo se mostrara el 1 con todas las letras menos la J
		fi
		echo "[$FILA][$COLUMNA]"
	done
done
