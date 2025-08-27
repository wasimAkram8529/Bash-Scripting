read num
rem=$((num % 2))
if [ $rem -eq 0 ]
then
	echo "${num} is a even number"
else
        echo "$num is a odd number"
fi	
