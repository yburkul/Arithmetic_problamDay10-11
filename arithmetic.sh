#Sorting Arithmetic Computation Problem

#Write program to take three inputs - a, b & c
array=()

read -p "Enter a number: " a
read -p "Enter a number: " b
read -p "Enter a number: " c

echo "Value of a+b*c is: " $(( $a+$b*$c ))
echo "Value of a*b+c is: " $(( $a*$b+$c ))
echo "Value of c+a/b is: " $(( $c+$a/$b ))
echo "Value of a%b+c is: " $(( $a%$b+$c ))

#Store the result in Dictionary for every computation

d["11"]="{$(( $a+$b*$c ))}"
d["12"]="{$(( $a*$b+$c ))}"
d["13"]="{$(( $c+$a/$b ))}"
d["14"]="{$(( $a%$b+$c ))}"

#Read the values from the Dictionary into the array

a[0]=${d[11]}
a[1]=${d[12]}
a[2]=${d[13]}
a[3]=${d[14]}

echo ${a[@]}

#Show Result in descending order

echo "Before sorting: " ${a[@]}
       for(( i=0 ; i<=3 ; i++ ))
       do
           for (( j=i+1 ; j<=3 ; j++ ))
           do
              if (( ${a[i]} < ${a[j]} ))
              then
                   temp=${a[i]}
                   a[$i]=${a[j]}
                   a[$j]=$temp
               fi
           done
       done
echo "After sorting: " ${a[@]}

#Result show in ascending order

for(( i=0 ; i<=3 ; i++ ))
do
    for(( j=i+1 ; j<=3 ; j++ ))
    do
        if(( ${a[i]} > ${a[j]} ))
        then
             temp=${a[i]}
             a[$i]=${a[j]}
             a[$j]=$temp
         fi
     done
done
echo "after sorting ascending: " ${a[@]}
