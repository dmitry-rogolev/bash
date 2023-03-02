#!/bin/bash

while [ true ]
do 
    echo "Enter your first name: "
    read NAME;
    if [[ $NAME == "" ]]; then break; fi
    echo "Enter your age: "
    read AGE;
    if [[ $AGE == "" ]]; then break; fi

    GROUP="adult"

    if [[ $AGE -le 16 ]]; then 
        GROUP="child"
    elif [[ $AGE -ge 17 ]] && [[ $AGE -le 25 ]]; then 
        GROUP="youth"
    fi

    echo "$NAME, your group is $GROUP"
done

echo "bye"