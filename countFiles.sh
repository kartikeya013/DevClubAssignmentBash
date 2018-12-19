cd "$1"
if [ -r "$1" ]
then
if [ -z "$2" ] 
  then
   find -maxdepth 1 -type f | wc -l
else
ls *"$2" | wc -l  
fi
else 
exit -1
fi