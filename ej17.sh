#!/bin/bash

if [ $# -eq 2 ]; then
	if [ -f $1 ];then
		if [ -e $2 ];then
			echo "El fichero ya existe, elije otro nombre"
		else
			cp $1 $2
		fi
	else
		echo "El fichero indicaco no existe o no es un fichero"
	fi


else
	echo "Número de parametros excesivo o insuficiente. Introduzca dos parametros."
fi
