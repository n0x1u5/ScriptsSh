#!/usr/bin/env bash

# @Author: AlexHernandez <alex>
# @Date:   04-11-2018
# @Email:  ahernandezmartin@educa.madrid.org
# @Last modified by:   alex
# @Last modified time: 05-11-2018




suma()
{
	let R=$1+$2
	return $R # Ya que no ponemos echo en la funcion, hay que devolverlo de alguna manera.
}
################ PROGRAMA PRINCIPAL ############
## Declaramos las variables
NUMERO1=56
NUMERO2=4
clear
suma $NUMERO1 $NUMERO2
RESULTADO=$? # Guarda el resultado de la suma
echo "El resultado de la operación suma es $RESULTADO"
