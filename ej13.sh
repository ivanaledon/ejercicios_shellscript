#!/bin/bash

suma () {
	read -p " + " res
	num=$(($num+$res))
	echo -n $num
}

clear
echo "Introduzca unicamente numeros enteros"
num=0
res=1
echo -n $num
until [ $res -eq 0 ]
do
	suma
done
echo ""
