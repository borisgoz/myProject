#!/bin/bash
#run all
RESON=0
MSG="All done..."
./run_vm1.sh
./run_bridge1.sh
./rpute.sh

#if [ $? -ne 0 ]; then REASON=1; MSG="failed start VM1. Don't run bridge"; fi
#if [ $REASON -eq 0 ]; then
#./run_bridge1.sh
#if [ $? -ne 0 ]; then REASON=2; MSG="failed create bridge to VM1"; fi
#fi
#echo $MSG
#echo $REASON
#exit $REASON
#END
