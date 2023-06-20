#!/bin/bash


if [ ! -d /home/nagios/$HOSTNAME/ ]; then
mkdir /home/nagios/$HOSTNAME
fi

#if [ ! -e /home/nagios/$HOSTNAME/mem.txt ]; then

free | grep Mem | awk '{print $3}' > /home/nagios/$HOSTNAME/mem.txt

#fi

a=$(cat /home/nagios/$HOSTNAME/mem.txt)
a=${a/.*}


if [ $a -gt 90000000 ];then

echo "WARNING  - MEM" $a
exit 2


elif [ $a -gt 100000000 ]; then
echo "CRITICAL - MEM" $a
exit 1


else 
echo $HOSTNAME "MEM - " $a
exit 0

fi


