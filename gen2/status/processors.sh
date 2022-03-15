#!/bin/bash
echo "processors:    : "`cat /proc/cpuinfo | grep processor | wc -l`
