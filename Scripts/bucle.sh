#!/usr/bin/env bash
# Mi segundo Shell Scripts
clear
echo -e "Introduce tu nombre: \c" 
read NOMBRE
echo -e 'Hola $NOMBRE'
echo -e "Información del sistema:\n `lsb_release -a`"
echo -e "Configuración TCP/IP: \n $(ifconfig -a)"
echo -e "Nuestro Shell Script ha terminado..."

