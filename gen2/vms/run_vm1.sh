#!/bin/bash
#start VM1

NAME=vm1
RAM_MB=512M
MAX_RAM_MB=1024M
CORE_COUNT=1
VM_RAW=/VMs/HD/VM1.raw
KERNEL=/VMs/kernel/vmlinuz-5.10.52-gentoo
ETH0_NAME=$NAME"_eth0"
ETH1_NAME=$NAME"_eth1"

REASON=0
MSG="All done, VM "$NAME" is up..."

CMD="qemu-system-x86_64 -enable-kvm \
			-cpu host \
			-name $NAME \
			-nographic \
			-smp $CORE_COUNT \
			-m size=$RAM_MB,maxmem=$MAX_RAM_MB
			-drive file=$VM_RAW,format=raw \
			-kernel $KERNEL \
			-append \"root=/dev/sda rw net.ifnames=0\" \
			-nic tap,ifname=$ETH0_NAME,mac=08:00:27:00:01:01,script=no,downscript=no \
			-nic tap,ifname=$ETH1_NAME,mac=08:00:27:00:01:02,script=no,downscript=no &
"

echo $CMD
echo
eval $CMD
if [ $? -ne 0 ]; then REASON=1; MSG="failed up VM "$NAME""; fi

#			-drive vfio-pci,host=00:07.0,multifunction=on
echo $MSG
echo $REASON
exit $REASON
#END
