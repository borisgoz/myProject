#!/bin/bash
chmod 755 /bin/*mount	#from 4711
setcap CAP_SYS_ADMIN=ep /bin/mount
setcap CAP_SYS_ADMIN=ep /bin/umount
#END
