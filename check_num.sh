read -rp "Enter something; " data

if [[ $data =~ ^[0-9]+$ ]]; then
	echo "$data is a integer."
else
	echo "$data is not an integer."
fi

if [[ $data =~ ^4+$ ]]; then
	echo "Yes"
else
	echo "No"
fi
