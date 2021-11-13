#!/bin/bash
#route add -net 11.0.0.0 netmask 255.255.255.0 gw 192.168.56.104
echo 1 > /proc/sys/net/ipv4/conf/all/forwarding
echo 1 > /proc/sys/net/ipv4/conf/all/accept_redirects

