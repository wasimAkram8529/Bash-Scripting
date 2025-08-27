fruits=("Apple" "Banana" "Orange")
echo "${fruits[0]}"
echo "${fruits[1]}"

echo "Initial: ${fruits[@]}"
fruits+=("Guava")
echo "Array length - ${#fruits[@]}"

for fruit in "${fruits[@]}"
do
	echo "${fruit}"
done

fruits[0]="Mango"
echo "Successfull"

fruits=("apple" "banana" "cherry")

check_item="banana"
found=0

for item in "${fruits[@]}"; do
    if [ "$item" == "$check_item" ]; then
        found=1
        break
    fi
done

if [ $found -eq 1 ]; then
    echo "$check_item exists in array"
else
    echo "$check_item does NOT exist in array"
fi

