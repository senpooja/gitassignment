#!/bin/bash -x

isPartTime=1
isFullTime=2
maxRateInMonth=100
empRatePerHrs=20
numOfWorkingDays=20

totalEmpHrs=0
totalWorkingDays=0

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
function getEmpwage()
{
	echo $(($totalEmpHrs*$empRatePerHrs))
}


while [[ $totalEmpHrs -lt $maxRateInMonth && $totalWorkingDays -lt $numOfWorkingDays ]]
do
	((totalWorkingDays++))
	randomCheck=$((RANDOM%3))
	getWorkingHours $randomCheck
	totalEmpHrs=$(($totalEmpHrs+$empHrs))
	dailyWages[$totalWorkingDays]=$(($empHrs*$empRatePerHrs))
done

totalSalary="$( getEmpwage $totalEmpHrs )"
echo ${dailyWages[@]}
