#!/usr/bin/env bash

# @Author: AlexHernandez <alex>
# @Date:   04-11-2018
# @Email:  ahernandezmartin@educa.madrid.org
# @Last modified by:   alex
# @Last modified time: 05-11-2018




# Ejemplo de while
#Coge el archivo nombres.txt y muestra los nombres mientras sean distintos de fermin, en caso de que haya uno igual a fermin, para el programa
clear
while [[ $NOMBRE != "fermin" ]]
do
	read NOMBRE
	echo -e "NOMBRE -> $NOMBRE"
	((count++)) # Para recoger el siguiente nombre de la lista
done < nombres.txt
