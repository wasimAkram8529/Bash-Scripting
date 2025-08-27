read -p "Enter directory you want to monitor: " dir
last_file_count=$(ls -A1 ${dir} | wc -l)
echo "Monitoring directory: ${dir}"
while true
do
  sleep 3
  current_file_count=$(ls -A1 ${dir} | wc -l)
  if [[ "$current_file_count" -gt "$last_file_count" ]]
  then
      echo "New file created in ${dir}"
      last_file_count=$current_file_count
  fi    
done  
