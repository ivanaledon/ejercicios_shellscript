#!/bin/bash
reiniciar () {
	{
	reb=$(($min*60))
        sleep $reb
        reboot	
        } &
}


res=0

if [ $# -eq 0 ];then
	while [ $res -ne 3 ]
	do
		clear
		echo "1. Reiniciar ahora"
		echo "2. Reiniciar en n minutos"
		echo "3. Salir"
		echo "Introduzca opcion:"
		read res
		case $res in
			1)
				min=0
				res=3
				;;
			2)
				echo "Introduzca el numero de minutos"
				read min
				res=3
				;;
			3)
				exit
				;;
			*)
				echo "Opcion no valida"
				;;
		esac
	done
	reiniciar

elif [ $# -eq 1 ];then
	min=$1
	reiniciar
fi
