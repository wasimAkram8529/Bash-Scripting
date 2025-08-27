read -rp "Enter a number whose table you want: " num
for nm in {1..10}; do
	echo "$num * $nm : " $((num * nm))
done
