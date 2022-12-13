#!/bin/bash

read -p "Introduce ruta absoluta o relativa del archivo o carpeta: " fil

if [ -d $fil ]; then
	echo "Existe y es un directorio."
elif [ -f $fil ]; then
	echo "Existe y es un fichero."
else
	echo "No existe."
fi
