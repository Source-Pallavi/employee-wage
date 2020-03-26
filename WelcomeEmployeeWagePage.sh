#! /bin/bash

echo "Welcome to the Employee Wage Computation"

#=====================================================================================================
#user case added to check employee persent or not

isPersent = 1
check_Persence = $((RANDOM%2))

if (( $isPersent == $check_Persence ))
then 
    echo "Employee is persent"
else 
    echo "Employee is absent"
fi

#==========================================================================================
# to calculate total wage of employee

if [ $isPresent -eq $randomCheck ]
then 
         employee_Rate_Per_Hr=20;
         working_Hrs=8;
         salary=`expr $working_Hrs \* $employee_Rate_Per_Hr`
   else
      salary=0;
fi
echo "Daily Wage of an Employee= " $salary


#===================================================================================================
#part time employee & wage

if [ $isPresent -eq $randomCheck ]
then 
      employee_Rate_Per_Hr=20
      employee_Hrs=4;
      salary=$(( $employee_Hrs*$employee_Rate_Per_Hr )) 
else
      salary=0;
fi
echo "Daily Wage of an Employee= " $salary


# ========================================================================================================
# using case solved previous problem

isPartTime=1
isFullTime=2
employee_Rate_Per_Hr=20
employee_Check=$((RANDOM%3+1))

case $employee_Check in
          $isFullTime )
              employee_Hrs=8;;
          $isPartTime )
              employee_Hrs=4;;
          * )
              employee_Hrs=0;;
esac
salary=$(($employee_Hrs*$employee_Rate_Per_Hr)) 

echo "Salary Of Employee= $salary"  

#=================================================================================================
# Calculating Wage for a month

isPartTime=1;
isFullTime=2;
totalSalary=0;
employee_Rate_Per_Hr=20;
numWorkingDays=20;

for(( day=1; day<=$numWorkingDays; day++ ))
do
   employee_Check=$((RANDOM%3))
        case $employee_Check in
            $isFullTime )
              employee_Hrs=8;;
            $isPartTime )
              employee_Hrs=4;;
            * )
              employee_Hrs=0;;
        esac
      salary=$(( $employee_Hrs*$employeeRatePerHr )) 
      totalSalary=$(( $totalSalary+$salary ))
done
echo  "Salary of an Employee= $totalSalary"

#=================================================================================================
#Calculate wages till a condition of total working hours or days is reached 
#for a month

IS_PART_TIME=1;
IS_FULL_TIME=2;
MAX_HRS_IN_MONTH=10;
EMP_RATE_PER_HR=20;
TOTAL_WORKING_DAYS=20;

total_Employee_Hrs=0;
totalWorkingDays=0;

while [[ $total_Employee_Hrs -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $TOTAL_WORKING_DAYS ]] 
do
(( totalWorkingDays++ ))
employee_Check=$((RANDOM%3))
case $empCheck in
    $IS_FULL_TIME )
        employee_Hrs=8;;    
    $IS_PART_TIME )
        employee_Hrs=4;;
    * )
        employee_Hrs=0;;
esac
total_Employee_Hrs=$(( $total_Employee_Hrs+$employee_Hrs ))
done
totalSalary=`expr $total_Employee_Hrs \* $EMP_RATE_PER_HR`

echo "salary of an Employee= $totalSalary"
