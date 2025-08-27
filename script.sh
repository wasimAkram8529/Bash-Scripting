backup_directory=$1
destination_directory=$2
current_date=$(date +%Y-%m-%d)
echo "$(dirname "$backup_directory")"
echo "$destination_directory"
tar -czf "$destination_directory/destination-$current_date" -C "$(dirname "$backup_directory")" "$(basename "$backup_directory")"
echo "Backup successfull"
