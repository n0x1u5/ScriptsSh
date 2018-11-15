#!/usr/bin/env bash

# @Author: AlexHernandez <alex>
# @Date:   04-11-2018
# @Email:  ahernandezmartin@educa.madrid.org
# @Last modified by:   alex
# @Last modified time: 05-11-2018




# Bucle for2
clear
IFS="
"
for FICHERO in $(find $HOME -user root) # Busca en el dirtorio home los archivos que son de root **DUDA EN ESTE EJERCICIO**
do
	echo $FICHERO
done
