#!/bin/bash

(rw) localhost ~ # basename mygit/myProject/gen2/howto/stderr.sh
stderr.sh
(rw) localhost ~ # basename mygit/myProject/gen2/howto/stderr.sh .sh
stderr
(rw) localhost ~ #
(rw) localhost ~ # basename /etc/passwd /etc/shadow
passwd
(rw) localhost ~ # basename -a /etc/passwd /etc/shadow
passwd
shadow
(rw) localhost ~ # basename -z /etc/passwd
passwd(rw) localhost ~ #
(rw) localhost ~ # basename -az /etc/passwd /etc/shadow
passwdshadow(rw) localhost ~ #
(rw) localhost ~ # basename -s .conf /etc/sysctl.conf
sysctl
(rw) localhost ~ #

for file in *.jpeg; do
    mv -- "$file" "$(basename $file .jpeg).jpg"
done

#end
