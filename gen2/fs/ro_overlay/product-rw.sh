#!/bin/bash

REASON=0
MSG="product-rw... OK"

mount -o remount,rw /dev/sda3 /product/
if [ $? -ne 0 ]; then REASON=1; MSG="failed remount /product/ to RW"; fi

echo $MSG
echo $REASON
exit $REASON

#END
