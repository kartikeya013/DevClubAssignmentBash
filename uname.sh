f="$1"
ext="${f##*.}"

if [ -z "$1" ] || [ -z "$2" ] || ! [[ -r "$1" ]] || ! [[ ".$ext" == ".txt" ]]
then
exit -1
else
var=$(grep "$2" "$1")
ans=$(echo $var | cut -d':' -f 5)  
echo $ans 
fi