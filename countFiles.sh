#!/bin/bash

if [ -e "$1" ]
then
    COUNT=0
    FILES=$(ls "$1"/*"$2")
    for FILE in $FILES
        do 
            if [ -f "$FILE" ]
            then
                ((COUNT++))
            fi
    done

    echo "$COUNT"
else
    echo "-1"
fi