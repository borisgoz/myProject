#!/bin/bash

REASON=0
MSG="to-gold-ro... please reboot"

if ! [ -e /product/boot_gold ]; then
	mount -o remount,rw /dev/sda3 /product/
	touch /product/boot_gold
	if [ $? -ne 0 ]; then REASON=1; MSG="failed create /product/boot_gold file"; fi
	mount -o remount,ro /dev/sda3 /product/
fi

if [ "$REASON" -eq 0 ]; then
	if [ -e /product/boot_gold_rw ]; then
		mount -o remount,rw /dev/sda3 /product/
		rm /product/boot_gold_rw
		if [ $? -ne 0 ]; then REASON=1; MSG="failed delete /product/boot_gold_rw file"; fi
		mount -o remount,ro /dev/sda3 /product/
	fi
fi

echo $MSG
echo $REASON
exit $REASON

#END
