#!/usr/bin/env bash

# @Author: AlexHernandez <alex>
# @Date:   04-11-2018
# @Email:  ahernandezmartin@educa.madrid.org
# @Last modified by:   alex
# @Last modified time: 05-11-2018




# Bucle for

#IFS sirve para indicar como mostrarlo, en este caso con salto de linea
clear
IFS="
"
for USUARIO in `who -a` #Muestra los usuarios conectados
do
	echo $USUARIO
done
