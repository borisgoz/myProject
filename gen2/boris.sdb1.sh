#!/bin/bash

mount --bind /tmp/sdb1/usr/src/ /usr/src/
mount --bind /tmp/sdb1/var/db/repos/gentoo/ /var/db/repos/gentoo/
mount --bind /tmp/sdb1/var/cache/distfiles/ /var/cache/distfiles/
mount --bind /tmp/sdb1/var/tmp/portage/ /var/tmp/portage/

#END
