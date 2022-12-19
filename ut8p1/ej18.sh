#!/bin/bash

exist=`grep $1: /etc/passwd | cut -d: -f1`
conec=`who | grep $1`

if ! [ -z $exist ];then
	echo -n "El usuario existe"
	if ! [ -z "$conec" ]; then
		echo -n " y está conectado"
	fi
	echo ""
else
	echo "El usuario no existe"
fi
