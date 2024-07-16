#!/bin/bash

# Create env and install required packages
conda create -n tps_ml_discovery python==3.10.0 scikit-learn pandas numpy scipy jupyter seaborn pymol pymol-psico tmalign -c schrodinger -c speleo3 -c conda-forge -y

#conda create -n tps_ml_discovery python==3.10.0 scikit-learn pandas numpy scipy jupyter seaborn pytorch pytorch-cuda pymol pymol-psico tmalign -c pytorch -c nvidia -c schrodinger -c speleo3 -c conda-forge -y

conda activate tps_ml_discovery
pip install torch --index-url https://download.pytorch.org/whl/rocm6.0
pip install epam.indigo
pip install openpyxl
pip install rdkit-pypi
conda install -c bioconda mafft -y
conda install -c bioconda iqtree -y
conda install -c conda-forge biopython -y
conda install -c schrodinger pymol-psico -y
pip install py3Dmol
pip install hdbscan
pip install scikit-learn-extra
pip install plotly
pip install fair-esm
pip install ankh
pip install tables
pip install tqdm
pip install py-mcc-f1
pip install inquirer
pip install dataclasses-json
pip install scikit-optimize
pip install xgboost
pip install GPUtil
