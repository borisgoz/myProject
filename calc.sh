#!/bin/bash
register=$((2#1111))
bit=$((2#110))
bit3=$((2#100))
result12345=$(( $register & $bit ))
result6=$(( $register & $bit3 ))
echo $result12345
echo $result6
#echo $((2#$result6))
echo "obase=2; 16 | bc -q"

echo "obase=2;1" | bc
#1
echo "obase=2;2" | bc
#10
echo "obase=2;3" | bc
#11
echo "obase=2;5" | bc
#101
echo "obase=2;6" | bc
#110
