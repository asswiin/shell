if [ $# -ne 1 ]; then
    echo "Syntax is $0 <filename>"
    exit 0
fi

tt=$(tty)
exec<$1

nol=0
nowd=0

while read -r line; do
    nol=$((nol + 1))
    set -- $line
    nowd=$((nowd + $#))
done

echo "No. of words = $nowd"
echo "No. of lines = $nol"

exec<$tt

