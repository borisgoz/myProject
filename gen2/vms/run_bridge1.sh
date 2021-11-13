#!/bin/bash
#create bridge1 to vm1
VM=vm1
IP=`ifconfig eth1 | grep -Po '\d+\.\d+\.\d+\.\d+' | cut -d ' ' -f1`
ifconfig "$VM"_eth0 up
ifconfig "$VM"_eth1 up
brctl addbr BR
brctl addif BR eth1 "$VM"_eth0
ifconfig eth1 0.0.0.0 up
#ifconfig BR ${IP[0]} netmask ${IP[1]} gw ${IP[2]} up
ifconfig BR 192.168.56.104 netmask 255.255.255.0 gw ${IP[2]} up
brctl show

#route add -net 1.1.1.0 netmask 255.255.255.0 gw 192.168.56.104
route add -net 11.0.0.0 netmask 255.255.255.0 gw 192.168.56.104

echo $MSG
echo $REASON
exit $REASON
#END
