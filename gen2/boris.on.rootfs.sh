#!/bin/bash

echo Going mounting a FS
if [ ! -d /tmp/sdb1 ]; then mkdir /tmp/sdb1; else echo folder /tmp/sdb1 already exist; fi
COUNT=`mount -l | grep sdb1 | wc -l`
if [ "$COUNT" -eq "1" ]; then echo SDB is already mounted; fi
if [ "$COUNT" -eq "0" ]; then echo "mount /dev/sdb1 /tmp/sdb1/"
	mount /dev/sdb1 /tmp/sdb1/; /tmp/sdb1/boris.sdb1.sh
fi

#END
