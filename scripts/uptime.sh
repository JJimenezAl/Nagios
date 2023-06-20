#!/bin/bash
t=$(cat /proc/uptime | awk '{print $1}')
t=${t/.*}
if [ $t -lt 2000 ];then

echo "CRITICAL"
exit 2

else
echo "OK"
exit 0

fi

