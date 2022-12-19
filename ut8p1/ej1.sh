#!/bin/bash

if [ $1 -gt $2 ]; then
	echo "$1 es mayor que $2"
elif [ $1 -eq $2 ]; then
	echo "$1 es igual a $2"
else
	echo "$1 es menor que $2"
fi
