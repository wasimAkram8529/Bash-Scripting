count=1
if [[ $count -gt 0 ]]; then
	num=2
	echo $count
fi

echo $num

fun(){
   num_2=4
   echo $num_2
}

fun
echo $num_2
