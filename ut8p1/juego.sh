#!/bin/bash

ran=$(( $RANDOM % 100 + 1 ))
res=0

while [ $res -ne $ran ]
do
	read -p "Introduce un número: " res
	if [ $res -gt $ran ]; then
		echo "Tu numero es más alto"
	elif [ $res -lt $ran ]; then
		echo "Tu numero es más bajo"
	else
		echo "¡¡¡Has acertado!!!"
	fi
done
