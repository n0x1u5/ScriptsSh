#!/usr/bin/env bash

# @Author: AlexHernandez <alex>
# @Date:   04-11-2018
# @Email:  ahernandezmartin@educa.madrid.org
# @Last modified by:   alex
# @Last modified time: 05-11-2018

PLANETAS="Mercury Venus Earth Mars Jupiter Saturn Uranus Neptune Pluto"

echo "------------Caso 1"
for lista in $PLANETAS
do
  echo $lista  # Cada planeta en una línea
done


echo "------------Caso 6"
LIMIT=10
for ((a=1, b=1; a <= LIMIT ; a++, b++))
do  # The comma concatenates operations.
  echo "$a-$b "
done

echo "------------Caso 5"
END=end
until [[ $var2 == "$END" ]]
# Tests condition here, at top of loop.
do
  echo "Input variable #1 "
  echo "($END to exit)"
  read var2
  echo "variable #1 = $var2"
  echo
done

echo; echo
