read -rp "Enter your name: " name

if [ -z $name ]; then
	echo "Please enter your name."
else
	echo "Hello $name from script."
fi
