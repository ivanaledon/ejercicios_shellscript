#/bin/bash

a=0

if [ $# -eq 1 ]; then
	while [ $a -lt 11 ]; do
		echo "$a * $1 = $(($a*$1))"
		a=$(($a+1))
	done
else
	echo "Numero de parametros introducido erroneo, introduzca un unico parametro."
fi
