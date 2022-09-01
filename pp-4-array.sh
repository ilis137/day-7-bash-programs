read -p "enter no of elements in array :- " n

echo ""

for((i=0;i<$n;i++))
do
	read -p "enter $i element: " x
 	array[$i]=$x;
done

sum=0;
found=0;
for (( i=0; i<$n-2; i++ ))
do
    	for (( j=$i+1; j<$n-1; j++ ))
    	do
        	for (( k=$j+1; k<$n; k++ ))
        	do
            		if [ $((${array[i]} + ${array[j]} + ${array[k]})) == $sum ];
            		then
                		echo "The triplet is: ${array[i]} ${array[j]} ${array[k]}"
                    found=1
            		fi
        	done
    	done
done
if (( found==0 ))
then
  echo "triplet doesn't exist"
fi