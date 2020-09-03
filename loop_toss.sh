#!/bin/bash.sh

isheads=0
istails=1

for((i=0;i<=10;i++))
do
	toss=$(( RANDOM%2 ))

	if[ $toss -eq 0 ]
	then
		echo "heads win"
	else
		echo "tails win"
	fi
done

