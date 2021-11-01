#!/bin/bash
#create bridge1 to vm1
RESON=0
MSG="All done, bridge is up..."
VM=vm1
IP=`ifconfig eth1 | grep -Po '\d+\.\d+\.\d+\.\d+' | cut -d ' ' -f1`
ifconfig "$VM"_eth0 up
if [ $? -ne 0 ]; then REASON=1; MSG="failed up "$VM"_eth0"; fi
ifconfig "$VM"_eth1 up
if [ $? -ne 0 ]; then REASON=2; MSG="failed up "$VM"_eth1"; fi

if [ "$REASON" == "0" ]; then brctl addbr BR
if [ $? -ne 0 ]; then REASON=3; MSG="failed create BR"; fi; fi

if [ "$REASON" == "0" ]; then brctl addif BR eth1 "$VM"_eth0
if [ $? -ne 0 ]; then REASON=4; MSG="failed add interfaces to BR"; fi; fi

if [ "$REASON" == "0" ]; then ifconfig eth1 0.0.0.0 up
if [ $? -ne 0 ]; then REASON=5; MSG="failed down eth0"; fi; fi

if [ "$REASON" == "0" ]; then
ifconfig BR ${IP[0]} netmask ${IP[1]} gw ${IP[2]} up
if [ $? -ne 0 ]; then REASON=5; MSG="failed up ip for BR"; fi; fi

brctl show

echo $MSG
echo $REASON
exit $REASON
#END
