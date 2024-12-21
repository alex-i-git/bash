#!/bin/sh

if [ $# -eq 0 ]
  then
    echo "Usage: $0 filename"
    exit 1
fi

source parameters

while read line
do
    eval echo "$line"
done < $1
