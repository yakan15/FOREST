#!/bin/sh
#$ -cwd
#$ -l s_gpu=1
#$ -l h_rt=00:10:00
#$ -m ae
#$ -N test
#$ -M your.email.address@m.titech.ac.jp
. /etc/profile.d/modules.sh
module purge
module load python/3.6.5
module load intel cuda openmpi
python train.py -data twitter_c -epoch 1 -save_model test -network 1
