#!/bin/bash

pwd

for file in *.json; do
    #echo "put $file"
    if python3 -m json.tool $file; then
     echo "$file is valid"
    else
     echo "$file is invalid"
     exit 1
    fi
done
