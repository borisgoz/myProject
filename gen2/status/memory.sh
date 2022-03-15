#!/bin/bash
 free -h | grep Mem | awk -F ' ' '{print $1 "        " $2}'
