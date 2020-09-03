#!/bin/bash.sh

isheads=0
istails=1

toss=$(( RANDOM%2 ))

if[ $toss -eq 0 ]
then
	echo "heads win"
else
	echo "tails win"

