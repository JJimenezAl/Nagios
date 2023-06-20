#!/bin/bash

numtrabajosw=$(ssh 192.168.141.62 'squeue | grep -e Prio -e Res | wc -l')

echo $numtrabajosw "Trabajos Espera  | Cola=$numtrabajosw;500;740;0;740"
numtrabajosw=${numtrabajosw/.*}


if [ $numtrabajosw -gt 150 ];then

echo "WARNING"
exit 2

elif [ $numtrabajosw -gt 300 ]; then 
echo "CRITICAL"
exit 1

else
echo "OK"
exit 0

fi
