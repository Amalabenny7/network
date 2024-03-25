#script to check if the side can be the side of triangle
#set -vx

if [ $# -gt 0 ]
then
echo "syntax is $0"
exit 1
fi
if [ $# -eq 0 ]
then
echo "Enter First Number"
read x
echo "Enter Second Number"
read y
echo "Enter Third Number"
read z
fi
if [ `expr $x + $y` -le $z -o `expr $y + $z` -le $x -o `expr $x + $z` -le $y ]
then
echo "$x $y $z are not a sides of triangle"
else
echo "sides of a triangle"
if [ $x -eq $y -a $y -eq $z ]
then
echo "THE TRIANGLE IS EQUILATERAL"
elif [ $x -eq $y -o $y -eq $z -o $z -eq $x ]
then
echo "ISOSCELLES TRIANGLE"
else
echo "SCALENE TRIANGLE"
fi
fi





