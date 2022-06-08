#! /bin/bash

array=()

for (( i=0; i<100; i++ ))
do
	array[$i]=$i
done
echo "${array[@]}"
