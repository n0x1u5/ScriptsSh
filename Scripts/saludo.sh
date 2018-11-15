#!/usr/bin/env bash

# @Author: AlexHernandez <alex>
# @Date:   04-11-2018
# @Email:  ahernandezmartin@educa.madrid.org
# @Last modified by:   alex
# @Last modified time: 05-11-2018




saludo()
{
	local NOMBRE="JUAN" # local indica que la variable es interna de la funcion, por lo tanto solo tendra el valor JUAN dentro de la funcion, luego, si se ejecuta fuera, tendra el valor Ana
	echo "En la función: Hola señor/a $NOMBRE"
}
################ PROGRAMA PRINCIPAL ############
## Declaramos las variables
NOMBRE="Ana"
clear
saludo
echo "En el programa principal: Hola señor/a $NOMBRE"
