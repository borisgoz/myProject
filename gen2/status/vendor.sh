#!/bin/bash
cat /proc/cpuinfo | grep 'vendor' | uniq
