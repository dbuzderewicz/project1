#! /bin/bash

isPrime(){

for (( i=2; i<=$1/2; i++ ))
do
	if [ $(($1%$i)) == 0 ]
	then
		prim=1
		break
	else
		prim=0
	fi
done

}

echo "Give an integer to check: "
read number

if [ -n "$number" ] && [ "$number" -eq "$number" ] 2>/dev/null
then

isPrime "$number"

if [ $prim -eq 0 ]
then
        echo "$number is a prime number."
else
        echo "$number is not a prime number."
fi

for (( j=number-1; j>2; j-- ))
do
        isPrime "$j"
        if [ $prim -eq 0 ]
        then
                echo "Nearest lesser prime number is $j"
                break
        fi

done

for (( k=number+1; k>2; k++ ))
do
        isPrime "$k"
        if [ $prim -eq 0 ]
        then
                echo "Nearest larger prime number is $k"
                break
        fi

done

#elif [ $number -le 1 ]
#then
#        echo "$number is not a prime number"
#        exit
#fi
else
        echo "Invalid input, give positive integer instead"
        exit
fi



