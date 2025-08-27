read -p "Enter first number: " num1
read -p "Enter second number: " num2
add=$(($num1 + $num2))
sub=$(($num1 - $num2))
mul=$(($num1 * $num2))
div=$(($num1 / $num2))

echo "Addition of $num1 and $num2 is $add"
echo "Subtraction of $num2 from $num2 is $sub"
echo "Multiplication of $num1 and $num2 is $mul"
echo "Division of $num1 by $num2 is $div"
