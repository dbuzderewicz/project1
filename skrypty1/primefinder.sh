#! /bin/bash


isPrime(){

for (( i=2; i<=$1/2; i++ ))
do
	if [ $(($1%$i)) == 0 ]
	then
		return 1
	else
		continue
	fi
done

return 0

}

primeStatus(){

isPrime "$1"
prim=$?

}

echo "Give an integer to check: "
read number

if [ $number -le 1 ]
then
        echo "$number is not a prime number"
fi

primeStatus "$number"

if [ $prim -eq 0 ]
then
	echo "$number is a prime number."
else
	echo "$number is not a prime number."
fi

prim=1

for (( j=number-1; j>2; j-- ))
do
	primeStatus "$j"
	if [ $prim -eq 0 ]
	then
		echo "Nearest lesser prime number is $j"
		break
	fi

done

prim=1

for (( k=number+1; k>2; k++ ))
do
        primeStatus "$k"
        if [ $prim -eq 0 ]
        then
                echo "Nearest larger prime number is $k"
                break
        fi

done





