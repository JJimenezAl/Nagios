#!/bin/bash

#s=$(du -s $1 | awk '{print $1}' | cut -c 1,2,3)
s=$(du -sh $1 | awk '{print $1}')
echo "OK - Used Space" $s
