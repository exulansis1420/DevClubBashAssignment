###############
# I realized later that this becomes very trivial with cut and grep, anyway here's my overkill
###############


#! /bin/bash
FLAG=0
if [ -e "$1" ]
then
    while read -r CURRENT_LINE
        do
        COUNTER=0
        # echo "$CURRENT_LINE"
            IFS=':' read -ra DATA <<< "$CURRENT_LINE" #split line with delimiter ":"
                for i in "${DATA[@]}"    
                do
                    ((COUNTER++))
                    if [ "$COUNTER" -eq 1 ]   
                    then
                        UNAME="$i"
                        # echo "$i"            
                    fi
                done
            
            if [ "$2" == "$UNAME" ]
            then
                COUNT=0
                ((FLAG++)) 

                IFS=':' read -ra INNERDATA <<< "$CURRENT_LINE"
                for j in "${INNERDATA[@]}"    
                do
                    ((COUNT++))
                    if [ "$COUNT" -eq 5 ]   #echo when count=5 i.e print full name
                    then
                        echo "$j"
                        break
                    fi
                done
                break    
            fi
    done <"$1"
    
    if [ "$FLAG" -eq 0 ]
    then
        echo "-1"
    fi

else
    echo "-1"
fi

#splitting based on delimiter, used reference
#https://stackoverflow.com/questions/918886/