#!/bin/bash
#SBATCH --output=/data/scratch/nagios/CPU/AIN/CalculoCPUAIN.txt
#SBATCH --job-name=Uso_CPU_AIN

module purge


usuarios=tjorajuria
TODAY=$(timedatectl | grep Local | awk {'print $4'})
sacct -aX -u $usuarios -S 2021-01-01 -E $TODAY -p --format=CPUTimeRaw,NCPUS,Reqgres  >/data/scratch/nagios/CPU/AIN/export.txt

module load Python/3.7.0-foss-2018b
srun python /data/scratch/nagios/CPU/AIN/costes.py
#which python

