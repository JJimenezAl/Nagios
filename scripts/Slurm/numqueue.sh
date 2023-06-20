#!/bin/bash


numtrabajos=$(ssh 192.168.X.X 'squeue | grep serv | wc -l')


echo $numtrabajos "Trabajos activos | Activos=$numtrabajos;0;740;500;740"
numtrabajos=${numtrabajos/.*}


if [ $numtrabajos -gt 500 ];then

echo "WARNING"
exit 2

elif [ $numtrabajos -gt 740 ]; then 
echo "CRITICAL"
exit 1

else
echo "OK"
exit 0

fi

