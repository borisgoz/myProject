#!/bin/bash

echo begining of script

PRODUCT=abc

myArr=(`ls boris`)

cd boris

LEN=${#myArr[*]}

i=0

while [ $i -lt $LEN ]; do
	echo "$i: ${myArr[$i]}"
	if ! [ "${myArr[$i]}" == "$PRODUCT" ]; then
		rm -rf ${myArr[$i]}
	fi
	let i++
done

echo

cat $PRODUCT/file

echo end of script

# end
