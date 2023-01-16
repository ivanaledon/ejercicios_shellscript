#!/bin/bash

users=$(who)
IFS=$'\n'
count=0
for user in $users
do
	((count++))
done

date
echo $count

# crontab
# 2 * * * * ~/Escritorio/ejercicios_shelscript/ut8p4/ej8.sh
