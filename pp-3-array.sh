#!/bin/bash -x
  index=0
 read -p "Enter a number for factors: " n

   while [ $((n%2)) -eq 0 ]
   do
    
        array[index++]=2
        n=$((n/2));
        
   done
    
    for (( i=3; $i*$i <= $n; i=$i+2 ))
    do
        
        while (( $(($n%$i)) == 0 ))
        do
            array[index++]=$i
            n=$(($n/$i));
        done
    done    
 
    if (($n > 2))
    then
        array[index]=$n
    fi
    echo "${array[@]}"
  
  