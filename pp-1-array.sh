for (( i=0; i<=9; i++ ))
do
	array[$i]=$((RANDOM%900 + 100));
done

echo "Printing array...."
echo ${array[@]}

secondGreatest=$(printf '%s\n' "${array[@]}" | sort -nu | tail -2 | head -1 )
echo "2nd largest element is "$secondgreatest
secondGmallest=$(printf '%s\n' "${array[@]}" | sort -nr | tail -2 | head -1 )
echo "2nd smallest element is "$secondsmallest