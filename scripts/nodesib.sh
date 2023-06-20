#!/bin/bash

nodes=$(/usr/sbin/ibnodes | wc -l)

if [ $nodes != 50 ];then

echo "CRITICAL nodo IB caido"
exit 2

else

echo "OK - "  $nodes "Nodos Infiniband"
fi

