#!/bin/bash
#Script testtrap.sh que sirve para entender las señales
clear
echo Enviame una señal entre estas: 1,3,9 o 15 y ya vere lo que hago
PID=`pgrep testtrap`
echo "Tengo el PID "$PID" pero mejor busca con ps para practicar"
echo Pulsa una tecla
read nada
while true
do
	trap 'echo "Terminare cuando me de la gana chaval"' 15
	trap 'echo "No quiero recargar. Me haces cosquillas..."' 1
	trap 'echo "Que dices?, que cree un fichero? mira en tu escritorio";touch /home/alumno/Escritorio/CACA; 	ls /home/alumno/Escritorio' 3
	trap 'echo "No me quiero morir pero muero"' 9
echo Aqui estoy sin hacer nada, esperando que me mandes una señal
sleep 2
done
