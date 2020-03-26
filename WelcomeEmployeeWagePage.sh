#! /bin/bash

# to calculate the total wage of an employee

if (( $isPersent == $check_Persence ))
then 
    employee_Rate_Per_Hr=20;
    working_Hrs=8;
    salary=`expr $working_Hrs \* $employee_Rate_Per_Hr`
else
    salary=0;
fi
echo "Daily Wage of an Employee= " $salary