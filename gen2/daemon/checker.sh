#!/bin/bash
#file /usr/local/bin/checker.sh
LIMIT=0.02
while (true)
do
    LAST="$(uptime | tail -c 5)"
    sleep 10
    if (( $(echo "$LAST >= $LIMIT" | bc -l) )); then
        echo "ALERT add $(date)" >> /var/log/checker.log
    fi
done
#END
