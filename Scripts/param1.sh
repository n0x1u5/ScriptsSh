#!/usr/bin/env bash
clear
# Ejemplo de paso de parámetros
echo -e "Número de parámetros introducido: $#"
echo -e "Todos los parámetros introducidos: $*"
echo -e "Nombre del shell script: $0"
echo -e "Parámetro 1: $1"
echo -e "Parámetro 2: $2"
echo -e "Parámetro 3: $3"
echo -e "Parámetro 4: $4"
echo -e "Parámetro 5: $5"
echo -e "Parámetro 6: $6"
echo -e "Parámetro 7: $7"
echo -e "Parámetro 8: $8"
echo -e "Parámetro 9: $9"
echo -e "Parámetro 10: $10"
echo -e "Después de ejecutar shift ...."
shift 5
echo -e "Parámetro 1: $1"
echo -e "Parámetro 2: $2"
echo -e "Parámetro 3: $3"
echo -e "Parámetro 4: $4"
echo -e "Parámetro 5: $5"
echo -e "Parámetro 6: $6"
echo -e "Parámetro 7: $7"
echo -e "Parámetro 8: $8"
echo -e "Parámetro 9: $9"
echo -e "Parámetro 10: $10"

echo -e "Nuestro Shell Script ha terminado..."

