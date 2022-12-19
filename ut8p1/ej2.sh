#!/bin/bash

if [ $# -eq 2 ]; then
	res=$(($1 + $2))
	echo $res
else
	echo "Error en el numero de parametros introducido introduzca solo dos numeros."
	echo "El uso correcto es el siguiente:"
	echo "ej2.sh num1 num2"
	echo "Ejemplo:"
	echo "ej2.sh 5 4"
fi
