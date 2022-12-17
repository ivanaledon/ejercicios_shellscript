#!/bin/bash

con=0
if [ -d $1 ]; then
	conte=`ls $1`
	for a in $conte
	do
		dir="$1/$a"
		if [ -d $dir ]; then
			echo "$a	- Directory"
		else	
			echo "$a	- File"
		fi
		con=$(($con+1))
	done
	echo "Hay $con entradas"
else
	echo "La ruta introducida no pertenece a un directorio"
fi

