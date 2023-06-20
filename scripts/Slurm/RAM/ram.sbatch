#!/bin/bash
##SBATCH --partition=ure_silver
##SBATCH --nodelist=servhpccl01[30-34]
for a in {05..42}
do
sbatch -w servhpccl01$a -p intel_silver -D outputs /home/nagios/scripts/ram.sh 
done
sbatch purge.sh

