#!/bin/bash
#SBATCH --output=/data/scratch/nagios/GPU/UPNA/CalculoPower.txt
#SBATCH --job-name=Uso_GPU_UPNA

module purge

#cd /data/scratch/nagios/GPU/UPNA

usuarios=irodri,pursua,jfumanal,aurio
TODAY=$(timedatectl | grep Local | awk {'print $4'})
sacct -aX -u $usuarios -S 2021-01-01 -E $TODAY -p --format=CPUTimeRaw,NCPUS,Reqgres  >/data/scratch/nagios/GPU/UPNA/export.txt

module load Python/3.7.0-foss-2018b

srun python /data/scratch/nagios/GPU/UPNA/costes.py
#which python

