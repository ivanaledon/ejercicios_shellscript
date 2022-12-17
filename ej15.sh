#!/bin/bash

con=0
if [ -d $1 ]; then
	conte=`ls $1`
	for a in $conte
	do
		dir="$1/$a"
		if [ -d $dir ]; then
			echo -n "$a	- Directory"
		elif [ -f $dir ]; then	
			echo -n "$a	- File"
		elif [ -S  $dir ]; then
			echo -n "$a 	- Socket"
		elif [ -b $dir ]; then
			echo -n "$a	- Block device"
		elif [ -c $dir ]; then
			echo -n "$a	- Character device"
		fi

		if [ -L $dir ]; then
			echo -n "	- Symbolic link"
		fi

		echo ""
		con=$(($con+1))
	done
	echo "Hay $con entradas"
else
	echo "La ruta introducida no pertenece a un directorio"
fi

