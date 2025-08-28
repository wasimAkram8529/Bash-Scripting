user_list="user_list.txt"

credential_file="credentials.txt"

while IFS= read -r username; do
	if id $username &> /dev/null; then
		echo "User already exist with username $username."
	else
		sudo useradd -m $username
		password=$(openssl rand -base64 12)

		echo "$username:$password" | sudo chpasswd
                
		echo "$username $password" >> $credential_file

		echo "User $username created successfully."
	fi

done < user_list.txt

echo "All users processed. Credentials saved in $credential_file"

