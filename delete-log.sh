echo "Searching for log file in /var/log to delete it...."
find /var/log -type f -name *.log -mtime +7 -delete
status=$?
if [ $status -eq 0 ]
then
     echo "Successfully deleted file."
else
     echo "An error occurred during the deletion process."
fi     
