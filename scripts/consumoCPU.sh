#!/bin/bash


consumo=$(ssh 192.168.X.X 'cat /data/scratch/nagios/CPU/XXX/CalculoXXX.txt')

echo $consumo € "Consumo CPU | Consumo=$consumo;1000;1400;0;1500"
consumo=${consumo/.*}



if [ $consumo -gt 1000 ];then

echo "WARNING"
exit 2

elif [ $consumo -gt 1400 ]; then 
echo "CRITICAL"
exit 1

else
echo "OK"
exit 0

fi

