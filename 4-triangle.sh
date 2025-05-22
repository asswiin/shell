if [ $# -ne 3 ]
then
echo "syntax is $0 <side1><side2><side3>"
else

if [ $1 -ge $2 -a $1 -ge $3 ] 
then
   a=$2; b=$3; c=$1
elif [ $2 -ge $3 ] 
then
   a=$1; b=$3; c=$2
else
  a=$1; b=$2; c=$3
fi

if [ `expr $a + $b` -gt $c ] 
then
  echo "Triangle can be formed"
else
  echo "Triangle cannot be formed"
  exit 0
fi

if [ $a -eq $b -a $b -eq $c ] 
then
  echo "Equilateral Triangle"

elif [ $a -eq $b -o $b -eq $c -o $c -eq $a ] 
then
  echo "Isoceles triangle"

elif [ `expr $a \* $a + $b \* $b` -eq `expr $c \* $c` ] 
then
   echo "its a right angled triangle"
fi
fi

