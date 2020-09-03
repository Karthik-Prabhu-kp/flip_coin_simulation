#!/bin/bash -x

isheads=0
istails=1

diff=0
Headwin=0
Tailwin=0

while [[ $Headwin -lt 21 || $Tailwin -lt 21 ]]
do
	toss=$(( RANDOM%3 ))

	if [ $toss -eq 0 ]
	then
		((Headwin++))
		echo "heads win"
	else
		((Tailwin++))
		echo "tails win"
	fi
done


if [ $Headwin -gt $Tailwin ]
then
	diff=$(($Headwin-$Tailwin))
	echo "heads win by $diff"
elif [ $Tailwin -gt $Headwin ]
then 
	diff=$(($Tailwin-$Headwin))
	echo "tails wins by $diff"
elif [ $Tailwin -eq $Headwin ]
then 
	echo "Tie"
fi	

