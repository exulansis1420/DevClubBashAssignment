#! /bin/bash

# echo ${#list1[@]}
# echo ${#list2[@]}
# echo $(ls ./dir1)
# echo $(ls ./dir2)
# cp ./dir1/"2.txt" ./dir2/"2.txt"

copy_function() # if dir1 is first para and dir2 is second para then 'completes' dir2
    
    {
    
    list1=($(ls ."$1"))
    list2=($(ls ."$2"))
    
    echo "Files copied from "$1" to "$2" are:"
    
    for (( i=0; i<${#list1[@]}; i++ ))
        do
            flag=0
            for (( j=0; j<${#list2[@]}; j++ ))
                do
                    if [ ${list1[i]} == ${list2[j]} ]
                    then
                        ((flag+=1))
                        break
                    fi
                done
                
                if [ $flag -eq 0 ]
                then
                    cp ."$1"/${list1[i]} ."$2"/${list1[i]}
                    echo ${list1[i]}
                fi
        done

    }


copy_function "$1" "$2"
copy_function "$2" "$1"


