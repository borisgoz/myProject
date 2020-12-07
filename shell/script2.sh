#! /bin/bash

count=11
if [ $count -eq 10 ]
then
    echo "the condition is true"
 else
    echo "the condition is false"
fi

count=10
if (( $count > 9 ))
then
    echo "the condition is true"
 else
    echo "the condition is false"
fi

count=10
if (( $count > 9 ))
 then
    echo "the first condition is true"
 elif (( $count <= 9 ))
 then
    echo "then second condition is true"
 else
    echo "the condition is false"
fi

# AND operator
age=10
if [ "$age" -gt 18 ] && [ "$age" -lt 40 ]
then
    echo "age is correct"
else
    echo "age is not correct"
fi

age=30
if [[ "$age" -gt 18 && "$age" -lt 40 ]]
then
    echo "age is correct"
else
    echo "age is not correct"
fi

age=30
if [ "$age" -gt 18 -a "$age" -lt 40 ]
then
    echo "age is correct"
else
    echo "age is not correct"
fi

# OR operator
age=30
if [ "$age" -gt 18 -o "$age" -lt 40 ]
then
    echo "age is correct"
else
    echo "age is not correct"
fi

age=30
if [ "$age" -lt 18 -o "$age" -lt 40 ]
then
    echo "age is correct"
else
    echo "age is not correct"
fi

age=30
if [ "$age" -lt 18 -o "$age" -gt 40 ]
then
    echo "age is correct"
else
    echo "age is not correct"
fi

age=30
if [[ "$age" -lt 18 || "$age" -gt 40 ]]
then
    echo "age is correct"
else
    echo "age is not correct"
fi

age=30
if [ "$age" -lt 18 ] || [ "$age" -gt 40 ]
then
    echo "age is correct"
else
    echo "age is not correct"
fi

number=1
while [ $number -lt 10 ]
do
    echo "$number"
    number=$(( number+1 ))
done

: '
1
2
3
4
5
6
7
8
9
'

number=1
while [ $number -le 10 ]
do
    echo "$number"
    number=$(( number+1 ))
done

: '
1
2
3
4
5
6
7
8
9
10
'
number=1
until [ $number -ge 10 ]
do
    echo "$number"
    number=$(( number+1 ))
done

: '
1
2
3
4
5
6
7
8
9
'


for i in 1 2 3 4 5
 do
    echo $i
 done

: '
1
2
3
4
5
'


for i in {0..5}
 do
    echo $i
 done

: '
0
1
2
3
4
5
'


for i in {0..10..2}
 #{starting..ending..increment}
 do
    echo $i
 done

: '
0
2
4
6
8
10
'

for (( i=0; i<5; i++ ))
 do
    echo $i
 done
: '
0
1
2
3
4
'

for (( i=0; i<=10; i++ ))
 do
    if [ $i -gt 5 ]
    then
    break
    fi
    echo $i
 done

: '
0
1
2
3
4
5
'

for (( i=0; i<=10; i++ ))
 do
    if [ $i -eq 3 ] || [  $i -eq 7 ]
    then
    continue
    fi
    echo $i
 done

: '
0
1
2
4
5
6
8
9
10
'

echo $1 $2 $3
# BMW MERCEDES TOYOTA

echo $0 $1 $2 $3
# script.sh BMW MERCEDES TOYOTA

args=("$@") #you can also specify the array size here
echo ${args[0]} ${args[1]} ${args[2]}

args=("$@")
echo $@   #prints all the array elements
echo $#   #print the array size
