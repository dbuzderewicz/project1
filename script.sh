#!/bin/bash

<<<<<<< HEAD

=======
for month in January February March April May June July August September October November December
do
	case $month in
		January | March | May | July | August | October | December)
			echo -n "$month has 31 days"
			echo"";;
		April | June | September | November)
			echo -n "$month has 30 days"
			echo"";;
		February)
			echo -n "$month has 28 or 29 days"
			echo"";;
	esac
done
>>>>>>> feature1

