#!/bin/bash
nombre () {
	nom=${nom:0:1}
        ap1=${ap1:0:2}
        ap2=${ap2:0:2}
        usu="alu$ap1$ap2$nom"
}


if [[ $# -eq 2 ]]; then
	
	while IFS=, read -r nom ap1 ap2 gru
	do
	
	case $1 in
		alta)
			nombre $nom $ap1 $ap2
			if [ ! -z "$gru" ];then
				addgroup $gru
				useradd -m -s /bin/bash $usu -g $gru
			else
				useradd $usu
			fi
		;;
		baja)
			nombre $nom $ap1 $ap2
                        if [ ! -z "$gru" ];then
                                userdel $usu
				delgroup $gru
				rm -rf /home/$usu
                        else
                                userdel $usu
			fi
		;;
		*)
			echo "Parametro introducido incorrecto, escriba "alta" o "baja""
		;;
	esac

	done < $2

else
	echo "Numero de parametros incorrecto"
	echo "El formato es el siguiente"
	echo "gestionusuarios.sh alta/baja /ruta/del/archivo"
fi
