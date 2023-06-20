#!/bin/bash

sbatch ram.sbatch
sleep 2s
scp -r /home/nagios/ nagios@192.168.111.22:/home/ >/dev/null
