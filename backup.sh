cd "$1"
str1="Files copied from "$1" to "$2" are:"
for i in * 
do
if ! [ -e "$2"/"$i" ];
then
str1="$str1 "$i""
fi
done
str2="Files copied from "$2" to "$1" are:"
cd "$2"
for i in * 
do
if ! [ -e "$1"/"$i" ];
then

str2="$str2 "$i"" 
fi
done
cd "$1"
cp -r * "$2"
cd "$2"
cp -r * "$1"
echo "$str1"
echo "$str2"