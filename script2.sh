#! /bin/bash

for (( i = 1 ; i < 250 ; i++ ))
do
	echo -n "plik$i " >> pliki.txt
	if [ $(( $i % 5 )) -eq 0 ]
	then
		echo "" >> pliki.txt
	fi
done
       
