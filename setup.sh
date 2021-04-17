#!/bin/bash
#make virtual_environment
conda create -n ourrealtrip python=3.8
. ~/miniconda3/etc/profile.d/conda.sh
conda activate ourrealtrip
#install dependency_packages
pip install -r requirements.txt
conda activate ourrealtrip
echo "Set_database"