#!/bin/sh

folder_path="$1"
search_word="$2"

for file in "$folder_path"/*
do
    if [ -f "$file" ]; then
        if grep --include='*.txt' -q -w "$search_word" "$file"; then
           echo "$file"
        fi
    fi
done

#echo "hello world"