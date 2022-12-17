#!/bin/bash
numeros () {
	read -p "Primer numero: " num1
	read -p "Segundo numero: " num2
}
suma () {
	numeros
	echo $(($num1+$num2))
}
resta () {
	numeros
	echo $(($num1-$num2))
}
divis () {
	numeros
	echo $(($num1/$num2))
}
multi () {
	numeros
	echo $(($num1*$num2))
}


res=10
until [ $res -eq 0 ]
do
	clear
	echo "1 - Sumar"
	echo "2 - Restar"
	echo "3 - Dividir"
	echo "4 - Multiplicar"
	echo "0 - Salir"
	
	read -p "Elige una opcion: " res
	case $res in
		1)
			suma
		;;
		2)
			resta
		;;
		3)
			divis
		;;
		4)
			multi
		;;
		0)
			echo "Adios!!"
		;;
		*)
			echo "Opcion incorrecta, elija un numero del 0 al 4"
		;;
	esac
	read -p "Pulsa enter para continuar" none
done
