#!/bin/bash

REASON=0
MSG="to-rw... please reboot"

if [ -e /product/boot_gold ]; then
        mount -o remount,rw /dev/sda3 /product/
        rm /product/boot_gold
        if [ $? -ne 0 ]; then REASON=1; MSG="failed delete /product/boot_gold"; fi
        mount -o remount,ro /dev/sda3 /product/
fi

if [ "$REASON" -eq 0 ]; then
	if ! [ -e /product/boot_rw ]; then
		mount -o remount,rw /dev/sda3 /product/
		touch /product/boot_rw
		if [ $? -ne 0 ]; then REASON=1; MSG="failed create /roduct/boot_rw file"; fi
		mount -o remount,ro /dev/sda3 /product/
	fi
fi

echo $MSG
echo $REASON
exit $REASON

#END
