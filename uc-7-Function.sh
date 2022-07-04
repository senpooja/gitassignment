#!/bin/bash -x

isFullTime=2
isPartTime=1
maxRateInMonth=100
numOfWorkingDays=20
empRatePerHr=20

totalEmpHr=0
totalWorkigDays=0
function getWorkingHours()
{
	case $randomCheck in 
				$isFullTime )
					empHrs=8
				;;
				$isPartTime )
					empHrs=4
				;;
				*)
					empHrs=0
				;;
	esac

}

while [[ $totalEmpHr -lt $maxRateInMonth && $totalWorkingDays -lt $numOfWorkingDays ]] 
do 
	((totalWorkingDays++))
	randomCheck=$((RANDOM%3))
	getWorkingHours $randomCheck
	totalEmpHr=$(($totalEmpHr+$empHrs))
done
totalsalary=$(($totalEmpHr*$empRatePerHr))
