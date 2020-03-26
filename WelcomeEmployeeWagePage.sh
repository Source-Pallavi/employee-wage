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
