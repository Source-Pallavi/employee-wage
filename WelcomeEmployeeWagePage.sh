#! /bin/bash

echo "Welcome to the Employee Wage Computation"

#user case added to check employee persent or not

isPersent = 1
check_Persence = $((RANDOM%2))

if (( $isPersent == $check_Persence ))
then 
    echo "Employee is persent"
else 
    echo "Employee is absent"
fi