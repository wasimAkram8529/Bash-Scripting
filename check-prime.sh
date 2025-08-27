read -p "Enter number: " num
num2=0

if [ "$num" -lt 2 ]; then
    echo "$num is not a prime number"
    exit 0
fi

if [ "$num" -eq 2 ] || [ "$num" -eq 3 ]; then
    echo "$num is a prime number"
    exit 0
fi
if [ $num -gt 4 ]
then	
    num2=$(($num / 2))
else
    num2=${num}
fi

isPrime=1
for ((nm=2; nm<=$num2; nm++))
do
  rem=$(($num % $nm))	
  if [ $rem -eq 0 ]
  then
      isPrime=0
      break
  fi
done

if [ $isPrime -eq 1 ]
then
    echo "$num is a prime number"
else
    echo "$num is no a prime number"
fi    
