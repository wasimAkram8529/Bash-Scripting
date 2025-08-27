str="Hello world!"
length=${#str}
echo "Original string is: " $str

reverse_str=""
for ((i=$length-1; i>=0; i--)); do
	reverse_str="$reverse_str${str:i:1}"	
done
echo "Modified string is: " $reverse_str
