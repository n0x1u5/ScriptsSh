#!/usr/bin/env bash

# @Author: AlexHernandez <alex>
# @Date:   08-11-2018
# @Email:  ahernandezmartin@educa.madrid.org
# @Last modified by:   alex
# @Last modified time: 11-11-2018


respuesta="S"
while [[ $respuesta == "S" ]] || [[ $respuesta == "s" ]]
do

	#Menú
	clear
	echo "a) Mostrar directorio en el que estas"
	echo "b) Mostrar la fecha y hora actuales"
	echo "c) Crear una copia de seguridad de un archivo"
	echo "d) Mostrar numeros de uno en uno entre dos cifras pasados como parametros"
	echo "e) Mostrar numeros de dos en dos entre dos cifras pasados como parametros"
	echo "f) Conversion de un numero arabe a romano (numeros posibles: 1 4 5 9 10 40 50 90 100)"
	echo "g) Salir"
	read opcion

	case $opcion in

		a|A)
			pwd
			;;
		b|B)
			date
			;;
		c|C)
			echo "Escriba el/los nombres de los archivos a respaldar"
			read archivo
      echo "Escriba el/los nombres del archivo a crear como copia"
      read copia
			cp $archivo $copia
			;;
		d|D)
		echo -e "Introduce un numero: "
		read numero1
		echo -e "Introduce otro numero: "
		read numero2
    if test $numero1 -gt $numero2
    then
    		echo -e "El primer numero tiene que ser menor que el segundo"
				exit
    else
    	for ((i=$numero1; i <= $numero2;  i++ ))
    	do
    		echo "$i"
    	done
    fi
			;;
		e|E)
			echo -e "Introduce un numero: "
			read numero1
			echo -e "Introduce otro numero: "
			read numero2
	    if test $numero1 -gt $numero2
	    then
	    		echo -e "El primer numero tiene que ser menor que el segundo"
					exit
	    else
	    	for ((i=$numero1; i <= $numero2;  i=i+2 ))
	    	do
	    		echo "$i"
	    	done
	    fi
				;;
		f|F)

		LIMIT=200
		E_ARG_ERR=65
		E_OUT_OF_RANGE=66

		#array de conversiones
		conversiones[1]=I
		conversiones[4]=IV
		conversiones[5]=V
		conversiones[9]=IX
		conversiones[10]=X
		conversiones[40]=XL
		conversiones[50]=L
		conversiones[90]=LXXXX
		conversiones[100]=C
		#array de factores
		factores=(1 4 5 9 10 40 50 90 100)


		to_roman ()   # Declaramos la función antes de llamarla
		{
		numero=$1

		for ((i=$((${#factores[@]} - 1)) ; i>=0; i--)) #Tenemos que ir restando los factorees de mayor a menor
		do
			factor=${factores[$i]}
			while [[ $((numero-factor)) -ge 0 ]] #Mientras se pueda restar un factor no pasamos al siguiente
			do
				((numero -= factor))
				echo  -n ${conversiones[$factor]}
			done
		done

		}


		if [[ -z $1 ]]
		then
			echo "Uso: $(basename $0) numero a convertir"
			exit $E_ARG_ERR
		fi

		re='^[0-9]*$'
		if ! [[ $1 =~ $re ]] || [[ $1 -gt $LIMIT ]] #Si no es un numero o sobrepasa el límite
		then
			echo "¡Fuera de rango!"
			exit $E_OUT_OF_RANGE
		fi

		to_roman $1 #llamamos a la función de conversion
		echo
		exit
		;;
		g|G)
			exit
			;;
		*)
			echo "Opción no válida"
			;;
	esac
	echo "¿Desea realizar otra operación? [S/N]"
	read respuesta
done
