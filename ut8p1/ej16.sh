#!/bin/bash


conf=0
cond=0
if [ -d $1 ]; then
	files=`find $1 -maxdepth 1 -type f`
	for a in $files
	do
		conf=$(($conf+1))
	done

	direc=`find $1 -maxdepth 1 -type d`
	for b in $direc
	do
		cond=$(($cond+1))
	done
	
	echo "El directorio contiene $conf ficheros y $cond directorios."

else
	echo "El directorio no existe o no es un directorio"
fi

