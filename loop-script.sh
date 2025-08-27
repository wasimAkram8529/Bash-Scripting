directory_path=$1
echo $directory_path
while [ "$(ls -A $directory_path)" ]
do
  echo "File ready to read"
  sleep 5
done

echo "File read completed"
