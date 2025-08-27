read -rp "Please enter a ip address: " ip
regexp="^((25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[0-9]?[0-9])\.){3}(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[0-9]?[0-9])$"

if [[ $ip =~ $regexp ]]; then
	echo "Valid ip address."
else
	echo "Invalid ip address."
fi
