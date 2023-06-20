#!/bin/bash

a=$(free | grep Mem | awk '{print $3}')

echo $a "MEM RAM | mem=$a;90000000;100000000;25000000;110000000"

b=$(ps aux | wc -l)


echo $b "Otra cosa | procs=$b;3000;50000;0;10000"
