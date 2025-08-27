str="abc1234567a8jshd"
regexp="[0-9]{8}"

if [[ $str =~ $regexp ]]; then
	echo "8 digits matches in a row"
else
	echo "8 digits not matches in a row"
fi
