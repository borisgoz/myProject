#!/bin/bash
echo dmesg howto
dmesg
sysctl -w kernel.dmesg_restrict=1
# regular user > dmesg: read kernel buffer failed: Operation not permitted
sysctl -w kernel.dmesg_restrict=0	#regular user permitted
#nano /etc/sysctl.conf and add line
#sysctl -w kernel.dmesg_restrict=1
dmesg --color=always | less
dmesg | grep -i usb
dmesg -T 	#time
dmesg -H 	#human
dmesg -T -H
dmesg -w 	#follow online

#MSGs from facility
#kern 	— kernel
#user 	— user level
#mail 	— mail
#daemon — system daemons
#auth 	— authorisation and security
#syslog — syslogd
#lpr 	— printers
#news 	— news
dmesg -f kern,daemon 	#facility only kernel and daemon MSGs

#Levels
#emerg 	— system not work
#alert 	— do something immediately
#crit 	— critical
#err 	— errors
#warn 	— warning
#notice — normal
#info 	— information
#debug 	— debugging
dmesg -l err,crit	#list error and critical MSGs

dmesg -C	#clear
dmesg -c	#read-and-clear

#END
