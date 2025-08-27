read -rp "Please enter filename: " filename
if [ -f $filename ]; then
	word_count=$(wc -w $filename | awk '{print $1}')
	echo "Word count of $filename is: $word_count"
else
	echo "Please enter a valid filename."
fi
