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
		if test $COLUMNA = "C" # En cuanto llegue a la letra C rompre el bucle y no sigue, empieza con un nuevo numero y asi sucesivamente
			then
				break
		fi
		echo "[$FILA][$COLUMNA]"
	done
done
