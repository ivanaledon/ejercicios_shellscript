#!/bin/bash

read -p "Introduce el fichero a leer: " fil

if [ -f $fil ]; then
	if [ -r $fil ]; then
		echo "El fichero existe, este es su contenido:"
		cat $fil
	else
		echo "El fichero existe pero no puede leerse."
	fi
else
	echo "La ruta introducida no pertenede a un fichero o no existe."
fi
