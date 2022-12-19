#!/bin/bash

read -p "Introduce un numero: " num

res=$(($num%2))

if [ $res -eq 0 ]; then
	echo "El numero es par"
else
	echo "El numero es impar"
fi
