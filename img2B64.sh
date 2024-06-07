#!/bin/bash
for file in ./images/*
do
    if [[ "$file" == *.png || "$file" == *.jpg || "$file" == *.jpeg ]]; then
    echo "$file"
    TEMP=$(base64 -w0 $file)
    echo "<img alt=\"Embedded Image\" src=\"data:image/png;base64,$TEMP\" />" > $file.txt
    fi
done