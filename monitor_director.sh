read -p "Enter director you want to monitor: " dir

if [ -d $dir ]; then
   while [ "ls -A $dir" ]; do
	file_count=$(ls -1 $dir | wc -l)
	echo "File count of $dir is: $file_count"
	sleep 5
   done
   echo "Monitoring of $dir is done successfully."
else
   echo "Please enter correct path of $dir"
fi
