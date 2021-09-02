#!/bin/bash

stdin  = 0
stdout = 1
stderr = 2

command & ==> bg > [1] 12345

command > /dev/null 2>&1 &

>/dev/null 2>&1 ==> stdout > /dev/null, stderr > stdout

(rw) localhost ~ # jobs -l
(rw) localhost ~ # sleep 99 &
[1] 13936


(rw) localhost ~ # fg %1
sleep 99
^Z
[1]+  Stopped          sleep 99
(rw) localhost ~ # bg
[1]+ sleep 99 &
(rw) localhost ~ # %1
sleep 99
^Z
[1]+  Stopped          sleep 99
(rw) localhost ~ # bg
[1]+ sleep 99 &
(rw) localhost ~ # jobs -l
[1]+ 13936 Running     sleep 99 &
(rw) localhost ~ # kill %1
(rw) localhost ~ # jobs -l
[1]+ 13936 Terminated  sleep 99
(rw) localhost ~ # jobs -l
(rw) localhost ~ #

(rw) localhost ~ # jobs -l
[1]-  8504 Running   sleep 11 &
[2]+  8527 Running   sleep 22 &
(rw) localhost ~ # disown %1
(rw) localhost ~ # jobs -l
[2]+  8527 Running   sleep 22 &
# logout ==> [1] 8504 will be running after logout. [2] will be stopped

or run
$ nohup command &
logout send SIGHUP (freeze) to all PIDs
#end
