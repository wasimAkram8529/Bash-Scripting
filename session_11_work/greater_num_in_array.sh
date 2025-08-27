arr=(2 5 8 4 9 1)
max_num=0
for num in ${arr[@]}; do
	if [[ $max_num -lt $num ]]; then
		max_num=$num
	fi
done

echo "Greater number in ${arr[@]} is: $max_num"
