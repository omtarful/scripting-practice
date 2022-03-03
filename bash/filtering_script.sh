#!/bin/bash
#script takes annotations file and filters according to a keyword an ouputs file in a directory you name
#it also outputs the number of rows that match that result
echo "Exercise 3"
head -n 1 Annotations.txt 

cat Annotations.txt | awk '{ print $1;}' | grep -E "_" | wc -l
# #b
sed -E -i.backup '/^\w+_[0-9]/d' Annotations.txt
# #c

# #c.a
if [ $# -lt 1 ]; then
    echo "You have to input the file to work on"
    exit 1
fi

sed "1d" "$1" | wc -l
# #c.b
echo "Input the name of a directory"
read directory
directory=$(echo $directory | sed 's/ /_/')
if [ -d "$directory" ]; then
    echo directory exists
    echo "Insert another name"
    read directory
fi

mkdir $directory


echo "What would you like to search for?"
read key
grep -i "$key" $1

#c.d
echo "Enter Keyword"
read keyword
file=$(echo $keyword | sed 's/ /_/')
file="$file.txt"

echo "" >  "$directory/$file"
head -n 1 $1 > "$directory/$file"
grep -i "$keyword" "$1" >> "$directory/$file"
#c.e
echo "Number of lines"
cat "$directory/$file" | wc -l 


