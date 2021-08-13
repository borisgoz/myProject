#!/bin/bash

REASON=0
PARTITION=/dev/sda1
NAME=grub
DIR=/tmp/$NAME
MSG="a $NAME partition $PARTITION was successfuly mounted to $DIR"

COUNT=`mount -l | grep $PARTITION | wc -l`
if [ "$COUNT" -eq 1 ]; then
	AS=`df | grep $PARTITION | awk '{print $6}'`
	MSG="a $NAME partition is already mounted as $AS"
	REASON=1
fi

if [ "$REASON" -eq 0 ]; then
	if ! [ -d $DIR ]; then mkdir -p $DIR; fi
	if [ $? -ne 0 ]; then MSG="failed create $DIR directory"; REASON=2; fi
fi

if [ "$REASON" -eq 0 ]; then
	mount $PARTITION $DIR
	if [ $? -ne 0 ]; then MSG="failed to mount $PARTITION partition"; REASON=3; fi
fi

echo $MSG
echo $REASON
exit $REASON
#END
