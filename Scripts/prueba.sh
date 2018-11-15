#!/usr/bin/env bash

# @Author: alex
# @Date:   27-10-2018
# @Last modified by:   Alex
# @Last modified time: 27-10-2018


# Comando metido en una variable
    ruta=`pwd`
    echo -e "Hola tu ruta es $ruta"
#Uso de los corchetes
    echo {a..c}                               #a b c
    echo {a..c}1                              #a1 b1 c1
    echo {,a}0                                #0 a0
# Aqui abajo se realizan sumas de diferente manera
    var1=$1 # Se piden los numeros como parametros
    var2=$2
    var3=`expr $var1 + $var2`
    var4=$(($var3 + $var3))
    echo "La suma es: $var3"
    echo "La suma de resultados es: $var4"
# Sustitucion de valores
    a=2334
    b=${a/23/BB}                               # Substituye "BB" por "23".
    echo "b = $b"
# Un if basico
    if [[ $var1 > $var2 ]]
    then
        echo -e "El primer numero es mayor que el segundo"
    else
      echo -e "El primer numero es menor que el segundo"
    fi
