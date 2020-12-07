#! /bin/bash

#this is a cat command

: '
This is the segment of multi-line comments
Through this script, you will learn
How to do multi-line commenting
'

: << 'and_this'
This is the segment of multi-line comments
Through this script, you will learn
How to do multi-line commenting
and_this

cat << hereDocDelimeter
this is a hereDocDelimeter
It is a variable
You can name it whatever you want to
hereDocDelimeter

echo "i'm waiting to any input from terminal and redirect to file"
echo "press Ctrl + D to stop"
cat>> file.txt
