#!/bin/bash

a=$(cat $1/mem.txt)

a=${a/.*}


if [ $a -gt 90000000 ];then

echo "WARNING  - MEM" $a
exit 2


elif [ $a -gt 100000000 ]; then
echo "CRITICAL - MEM" $a
exit 1


else
echo $1 "MEM OK -  $a | mem=$a;90000000;100000000;25000000;110000000"
exit 0

fi

