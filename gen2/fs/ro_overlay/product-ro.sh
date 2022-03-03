#!/bin/bash

REASON=0
MSG="product-ro... OK"

mount -o remount,ro /dev/sda3 /product/
if [ $? -ne 0 ]; then REASON=1; MSG="failed remount /product/ to RO"; fi

echo $MSG
echo $REASON
exit $REASON

#END
