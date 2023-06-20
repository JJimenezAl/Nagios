#!/bin/bash

active=$(/usr/sbin/ibstatus  | grep state | head -1 | awk '{print $3}')
link=$(/usr/sbin/ibstatus | grep state | tail -1 | awk '{print $4}')

#echo " la interfaz esta en estado" $active
#echo "Linkstatus" $link

if [[ $active != 'ACTIVE' ]]  || [[ $link != 'LinkUp' ]]; then

echo "CRITICAL IB not ACTIVE"
exit 2
else

echo "IB ok"
exit 0
fi



