read -rp "Please enter an identifier: " identifier
regexp="^[A-Za-z_][A-Za-z0-9]*$"

if [[ $identifier =~ $regexp ]]; then
	echo "Identifier name accepted."
else
	echo "Identifier name is not accepted."
fi
