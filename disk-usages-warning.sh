read -p "Enter partion to read disk usage: " partition
thresold=80
used=$(df -h $partition | awk 'NR==2 {print $5}' | sed 's/%//')
if [ $used -gt $thresold ]
then
	echo "WARNING: Disk usage on ${partition} is at ${used}%, which is above the ${thresold}% threshold!"
else
        echo "Disk usage on ${partition} is at ${used}%. All good."
fi	
