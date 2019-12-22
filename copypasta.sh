#! /bin/bash



while read CURRENT_LINE; do

    if [ $(echo "$CURRENT_LINE" | cut -d " " -f 1) != "<name" ]
    then 
        echo "$CURRENT_LINE" >> "temp.txt"
    else
        echo "<name val="\"$2\"">" >> "temp.txt"
    fi
    
done<"$1"

mv "temp.txt" "$1"