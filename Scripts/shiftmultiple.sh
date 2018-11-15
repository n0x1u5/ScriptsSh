#!/usr/bin/env bash
#Comando que hay que ejecutar para entender el script ./shiftmultiple.sh a b c d e f g h i j k l m n ñ o p q r s t u v w x y z
pause ()
{
	echo -e "Pulsa intro para continuar...\c"
	read 
}
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
pause #Llamamos a la funcion
clear
echo -e "Después de ejecutar shift ...."
shift 9
echo -e "Parámetro 1: $1"
echo -e "Parámetro 2: $2"
echo -e "Parámetro 3: $3"
echo -e "Parámetro 4: $4"
echo -e "Parámetro 5: $5"
echo -e "Parámetro 6: $6"
echo -e "Parámetro 7: $7"
echo -e "Parámetro 8: $8"
echo -e "Parámetro 9: $9"
pause
clear
echo -e "Después de ejecutar otro shift ...."
shift 9
echo -e "Parámetro 1: $1"
echo -e "Parámetro 2: $2"
echo -e "Parámetro 3: $3"
echo -e "Parámetro 4: $4"
echo -e "Parámetro 5: $5"
echo -e "Parámetro 6: $6"
echo -e "Parámetro 7: $7"
echo -e "Parámetro 8: $8"
echo -e "Parámetro 9: $9"
pause
clear
echo -e "Nuestro Shell Script ha terminado..."

