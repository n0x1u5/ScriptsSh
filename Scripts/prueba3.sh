#!/usr/bin/env bash

# @Author: AlexHernandez <alex>
# @Date:   05-11-2018
# @Email:  ahernandezmartin@educa.madrid.org
# @Last modified by:   alex
# @Last modified time: 05-11-2018

# Ejercicio basado en el ejercio 2 de la practica 6
user=`echo $UID`
if [[ $user == 0 ]]
then
  echo "Eres root"
else
  echo "Eres usuario normal"
fi
