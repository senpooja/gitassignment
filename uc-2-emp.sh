#!/bin/bash/ -x

Present=1
randomCheck=$((RANDOM%2))

if [ $Present -eq $randomCheck ]
then
	empRatePerHr=20
	empHrs=8
	salary=$(($empHrs*$empRatePerHr))
else 
	salary=0
fi
