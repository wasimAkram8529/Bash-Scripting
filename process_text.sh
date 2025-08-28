#!/bin/bash

read -rp "Please enter a text file you want to process: " file

if [ ! -f $file ]; then
      echo "$file does not exit."
      exit 1
elif [ ! -s $file ]; then
      echo "$file is a empty file."
      exit 1
fi

count(){
    wc -"$1" < $file
}

total_line=$(count l)
total_word=$(count w)
total_char=$(count m)

echo "Total number of line is : $total_line"
echo "Total number of words is : $total_word"
echo "Total number of char is : $total_char"

max_word=""

while read -r word; do
	if (( ${#word} > ${#max_word} )); then
		max_word=$word
	fi

done < <(tr -s '[:space:]' '\n'  < "$file")

echo "Maximum length word in $file is: $max_word"
