#!/bin/bash

# cambiar esta variable para cambiar las carpetas a inspecionar
dir="/home/admin01"


files=`grep -r -l hack $dir`
con=0
IFS=$'\n'

for file in $files
do
	((con++))
	echo "$file"
	cp -f "$file" cuarentena/
done

echo "se han encontrado $con archivos"
