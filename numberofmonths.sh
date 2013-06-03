#!/bin/bash

month=`date +%b`
year=`date +%Y`

if [ $month = "Feb" ]; then
    if [ $[ $year % 400 ] -eq "0" ]; then
        echo "This is a leap year. February has 29 days."
    elif [ $[$year % 4] -eq 0 ]; then
        if [ $[$year % 100 ] -ne 0 ]; then
            echo "This is a leap year. February has 29 days."
        else
            echo "This is not a leap year. February has 28 days."
        fi
    else
        echo "This is not a leap year. February has 28 days."
    fi    
elif [ $month = "Apr" ] || [ $month = "Jun" ] || [ $month = "Sep" ] || [ $month = "Nov" ]; then
    echo "number of days: 30"
else
    echo "number of days: 31"
fi    
