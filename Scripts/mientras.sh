#!/usr/bin/env bash

# @Author: AlexHernandez <alex>
# @Date:   04-11-2018
# @Email:  ahernandezmartin@educa.madrid.org
# @Last modified by:   alex
# @Last modified time: 05-11-2018




# Ejemplo de while
clear
TEXTO="ALGO"
while [ $TEXTO ] # Mientras exista la variblae $TEXTO...
do

	echo -e "Introduce un texto: \c"
	read TEXTO
	echo -e "Texto -> $TEXTO"
done
