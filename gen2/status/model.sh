#!/bin/bash
cat /proc/cpuinfo | grep 'model name' | uniq
