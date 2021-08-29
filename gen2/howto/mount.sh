#!/bin/bash
mount -l	#all
mount -t ext4	#only ext4
mount -t TYPE DEVICE DIR
mount -o OPTIONS DEVICE DIR
mount -o loop IMAGE.iso /media

umount DIR
umount DEVICE
fuser -m DIR	#if busy, list processes
umount -f DIR	#force
umount -l DIR	#lazy, wait when dev will be a free

mount -t nfs 10.10.0.10:/backups /var/backups

sshfs [user@]host:[remote_directory] mountpoint [options]
sshfs boris@192.168.0.1:/home/boris /home/boris/boris_remote
fusermount -u /local/mountpoint
umount /local/mountpoint

ssh -p <port_number> username@remote_host_or_ip

#/etc/fstab
[File System] [Mount Point] [File System Type] [Options] [Dump] [Pass]
<file system> <dir> <type> <options> <dump> <pass> remote.server:/dir /media/nfs nfs defaults 0 0
<file system> <dir> <type> <options> <dump> <pass> 10.10.0.10:/backups /var/backups nfs defaults 0 0
user@host:/remote/dir  /local/mountpoint  fuse.sshfs  defaults  0  0

df
df -t ext4
df -x tmpfs
#end

https://man7.org/linux/man-pages/man8/mount.8.html#FILESYSTEM-INDEPENDENT_MOUNT_OPTIONS
