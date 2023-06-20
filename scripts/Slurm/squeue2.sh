#!/bin/bash

com=$(cat /home/nagios/sacct/completed.txt)


echo "COMPLETED - $com |Completed=$com;3000;5000;0;2500" 

run=$(cat /home/nagios/sacct/running.txt)



echo "RUNNING - $run | Running=$run;3000;5000;0;2500"
