#! /bin/bash

RESULT=0

    while read CURRENT_LINE; do
            ARGUMENT=$(echo "$CURRENT_LINE" | cut -d " " -f 1 )
            OPERATOR=$(echo "$CURRENT_LINE" | cut -d " " -f 2 )
            
            if [ "$OPERATOR" == "+" ]
            then
                ((RESULT=RESULT+ARGUMENT))
            
            elif [ "$OPERATOR" == "-" ]
            then
                ((RESULT=RESULT-ARGUMENT))
            
            elif [ "$OPERATOR" == "*" ]
            then
                ((RESULT=RESULT*ARGUMENT))
            
            elif [ "$OPERATOR" == "/" ]
            then
                ((RESULT=RESULT/ARGUMENT))
            fi
        
    done<"$1"

 echo $RESULT





