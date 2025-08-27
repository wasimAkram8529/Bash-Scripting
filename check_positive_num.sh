read -rp "Enter a number: " num
regexp="^[0-9]+$"

if [[ $num =~ $regexp ]]; then
	echo "$num is a positive number."
else
	echo "$num is not a positive number."
fi
