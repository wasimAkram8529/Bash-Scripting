read -rp "Please enter a username: " username
userExist="$(grep -q "^$username:" /etc/passwd)"
if [ -n $userExist ]; then
	echo "User with username $username exist in system."
else
	echo "User with username $username does not exist in system."
fi
