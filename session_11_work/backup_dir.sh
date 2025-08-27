read -p "Enter director whose backup you want: " target
read -p "Enter destination director: " destination

if [ -e $destination ]
then	
    tar -czf "${destination}/backup-file.tar.gz" -C "$(dirname ${target})" "$(basename ${target})"
    status=$?
    if [ $status -eq 0 ]
    then
        echo "Backup successfull"
    else
        echo "Backup is unsuccessfull try again later"
    fi
else
    echo "$destination folder does not exist please enter correct destination folder"
fi    
