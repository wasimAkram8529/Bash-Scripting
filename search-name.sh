read -p "Enter name you want to search: " name
nameStore=("wasim" "meraz" "anurag" "danish" "puneeth")
found=0
for nm in ${nameStore[@]}
do
  if [ "$nm" == "$name" ]; then
     found=1
     break
  fi
done

if [ $found -eq 1 ]
then
    echo "$name found in database"
else
    echo "$name not found in database"
fi


