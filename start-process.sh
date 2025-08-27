process="nginx"
command="sudo systemctl start ${process}"

if pgrep -x ${process} > /dev/null
then
     echo "Process is running"
else
   ${command}
   
   if [ $? -eq 0 ]
   then
	echo "$process start successfully"
   else
        echo "failed to start $process"
   fi
fi   
