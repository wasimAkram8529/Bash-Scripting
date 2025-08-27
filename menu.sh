echo "Choose a option from menu to proced."
echo "1. show date"
echo "2. show user"
echo "3. show uptime"
echo "4. exit"
read choice

if [ $choice -eq 1 ]
then
     curr_date=$(date +%d)
     echo "Current date is: $curr_date"
elif [ $choice -eq 2 ]
then	
     user=$(whoami)
     echo "Current user is: ${user}"
elif [ $choice -eq 3 ]
then	
     avg_load=$(uptime)
     echo "System average load is: ${avg_load}"
elif [ $choice -eq 4 ]
then
     exit 0
else
     echo "Invalid choice please select a valid choice."
fi     
