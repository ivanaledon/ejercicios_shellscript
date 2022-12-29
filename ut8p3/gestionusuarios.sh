#!/bin/bash
nombre () {
	nom=${1:0:1}
        ap1=${2:0:2}
        ap2=${3:0:2}
        usu="alu$ap1$ap2$nom"
}


if [[ $# -le 5 && $# -ge 4 ]]; then
	case $1 in
		alta)
			nombre $2 $3 $4
			if [ $# -eq 5 ];then
				addgroup $5
				useradd -G $5 $usu
			else
				useradd $usu
			fi
		;;
		baja)
			nombre $2 $3 $4
			userdel $usu
		;;
		*)
			echo "Parametro introducido incorrecto, escriba "alta" o "baja""
		;;
	esac


else
	echo "Numero de parametros incorrecto"
	echo "El formato es el siguiente"
	echo "gestionusuarios.sh alta/baja nombre apellido1 apellido2 [grupo]"
fi
