#!/bin/bash

for (( a=1;$a < 6;a=$(($a+1)) ))
do
	for (( b=1;$b <= $a;b=$(($b+1)) ))
	do
		echo -n "$a"
	done
	echo ""
done
