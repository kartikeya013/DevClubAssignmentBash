#!/bin/bash
set -f
let num=0
let input=0
for i in $(cat "$1")
do 
if [[ $i == *[+]* ]] ;
then
let num=num"$i""$input"
else
if [[ $i == *[-]* ]] ;
then
let num=num-"$input"
else
if [[ $i == *[*]* ]] ;
then
let num=num*"$input"
else
if [[ $i == *[/]* ]] ;
then
let num=num/"$input"
else
let input="$i"
fi
fi
fi
fi
done
echo "$num"
exit