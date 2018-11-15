#!/usr/bin/env bash

# @Author: AlexHernandez <alex>
# @Date:   04-11-2018
# @Email:  ahernandezmartin@educa.madrid.org
# @Last modified by:   alex
# @Last modified time: 05-11-2018




# Bucle for3
#Apaga todos los servidores que haya puestos en el archivo servidores.txt
clear
SERVIDORES=servidores.txt
IFS="
"
for SERVIDOR in `cat $SERVIDORES` # Primero se muestran
do
	shutdown -h now $SERVIDOR
done
