#!/usr/bin/env bash

# @Author: AlexHernandez <alex>
# @Date:   04-11-2018
# @Email:  ahernandezmartin@educa.madrid.org
# @Last modified by:   alex
# @Last modified time: 05-11-2018




RUTA=/home/asir/scripts/mientras.sh
clear
if test -r $RUTA # Comprueba si la variable $RUTA contiene un fichero y tiene permiso de escritura
then
	cat $RUTA
else
	echo "No existe ese fichero o no tienes permiso de lectura"
fi
echo -e "Nuestro Shell Script ha terminado..."
