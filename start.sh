#!/bin/bash

echo "number of tasks"
read var
echo "what day"
read dd
re='^([1-99]+)$'
if [[ $var =~ $re ]]
then
    for ((i = 0; i <= $var; i++))
    do
        echo $var
        if [[ $i -le 9 ]]
            then
            mkdir ex0$i
            if [[ $var -le 10 ]]
                then
                    touch ex0$i/day0"$dd"_ex0$i.sql
                else
                    touch ex0$i/day"$dd"_ex0$i.sql
                fi
            else
                mkdir ex$i
                touch ex$i/day"$dd"_ex$i.sql
            fi
    done
else
    echo "there must be one number from 1 to 99"
fi

