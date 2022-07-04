#!/bin/bash -x

isfulltime=1
isparttime=2
randomcheck=$((RANDOM%3))
emprateperhr=20

case $randomcheck in 
			$isparttime )
				empHrs=4
			;;
			$isfulltime )
				empHrs=8
			;;
			*)
				empHrs=0
			;;
esac 	
salary=$(($empHrs*$emprateperhr))
