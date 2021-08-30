#!/bin/bash
echo fsck - check and repair a Linux filesystem
echo fsck [OPTIONS] [FILESYSTEM]
echo umount /dev/sdc1
echo fsck -p /dev/sdc1
echo -p \> automaticly
echo mount /dev/sdc1
echo
echo fsck -p /dev/sda1 from GOLD
echo tune2fs -c 25 /dev/sda1 \> after every 25 mounting chk part
echo tune2fs -i 1m /dev/sda1 \> after 1 month
echo in fstab
echo /dev /\ \ \ \  ext4 defaults 0 1 \> rootfs 1st part
echo /dev /sda2 ext4 defaults 0 2 \> any 2ndary part
echo /dev /sdb1 ext4 defaults 0 1 \> no chk

echo
#end
