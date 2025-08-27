for ((i=1; i<=5; i++))
do
	echo "$i"
done

echo 
for i in {1..5}; do
	echo "$i"
done

echo $a
echo
i=1
while [ $i -le 5 ]; do
	echo "$i"
	((i++))
done
