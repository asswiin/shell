if [ $# -ne 2 ]
then
echo "Syntax is $0 <file1> <file1>"
exit 0
fi
cmp -s $1 $2
if [ $? -eq 0 ]
then 
echo "Removing file $1"
rm $1
else
echo "Files are not identical"
fi
exit 0
