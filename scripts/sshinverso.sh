#!/bin/bash

#Script para comprobar que esta lanzado el tunel inverso en el login



sesions=$(ssh 192.168.109.62 'ps aux | grep root@176.12.87.151' | wc -l)
#sesions=2 #Prueba para nagios
echo $sesions  "ssh Inverso | Inverso=$sesions;1;2;0;3"
sesions=${sesions/.*}


if [ $sesions -lt 3 ]
then

echo "CRITICAL"

exit 2

else

echo "OK"
exit 0
fi


