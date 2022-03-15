#!/bin/bash

# file:        /opt/bin/checkdatalog.sh
# description: checking folder size
# date:        2022/03/16-ver01

DAEMON=checkdatalog
LOGFILE=/var/log/$DAEMON.log

while (true)
do
    USE=`df -h | grep /data | awk -F ' ' '{print $5}'`
    USE=`echo $USE | awk -F '%' '{print $1}'`

    if [ $USE -ge 95 ]; then
        echo "Running out of space on /DATA/LOGS. Going delete files" >> $LOGFILE
        mount -o remount,rw,noatime /dev/mmcblkp5 /data
        rm -rf /data/logs/*
        mount -o remount,rw,noatime,sync /dev/mmcblkp5 /data
    fi

    SIZE=`ls -l $LOGFILE`
    SIZE=`echo $SIZE | awk -F ' ' '{print $5}'`
    if [ $SIZE -ge 2048 ]; then
        if [ -e $LOGFILE.3 ]; then mv $LOGFILE.3 $LOGFILE.4; fi
        if [ -e $LOGFILE.2 ]; then mv $LOGFILE.2 $LOGFILE.3; fi
        if [ -e $LOGFILE.1 ]; then mv $LOGFILE.1 $LOGFILE.2; fi
        if [ -e $LOGFILE ]; then mv $LOGFILE $LOGFILE.1; fi
    fi

    sleep 300
done
#end
