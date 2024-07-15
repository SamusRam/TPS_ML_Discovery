#!/bin/bash

#SBATCH --job-name=ANM_ATLAS_REFOLDED
#SBATCH --time=44:00:0
#SBATCH --mem 50GB
#SBATCH --cpus-per-task 50
#SBATCH --partition standard-g
#SBATCH --account=project_465000660
#SBATCH --gpus 8

source ~/.bashrc
conda activate tps_ml_discovery
cd /scratch/project_465000659/samusevi/TPS_ML_Discovery

python -m src.screening.tps_screening_cluster_launcher --session-i $SLURM_ARRAY_TASK_ID
