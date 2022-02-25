#Sorting Arithmetic Computation Problem

#Write program to take three inputs - a, b & c

read -p "Enter a number: " a
read -p "Enter a number: " b
read -p "Enter a number: " c

echo "Value of a+b*c is: " $(( $a+$b*$c ))
echo "Value of a*b+c is: " $(( $a*$b+$c ))
echo "Value of c+a/b is: " $(( $c+$a/$b ))
echo "Value of a%b+c is: " $(( $a%$b+$c ))
