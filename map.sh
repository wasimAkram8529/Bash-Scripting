declare -A capitals
capitals["France"]="Paris"
capitals["India"]="New delhi"
capitals["Italy"]="Rome"

echo "${capitals["France"]}"

for country in "${!capitals[@]}"
do
	echo "${country}"
done

echo "Successfull"
