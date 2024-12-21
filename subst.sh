#!/bin/sh

if [ $# -eq 0 ]
  then
    echo "Usage: $0 filename1 filename2 .. filename9"
    exit 1
fi

render() {
while read line
do
    eval echo "$line" >> out/$1
done < $1
}

#Parameters filename
source parameters


if [ ! -d out ]; then
  mkdir out
fi


for i in $@
do

    render $i
done


 


