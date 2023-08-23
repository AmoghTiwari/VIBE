#!/usr/bin/env bash

export CONDA_ENV_NAME=vibe_env
echo $CONDA_ENV_NAME

conda create -n $CONDA_ENV_NAME python=3.7

eval "$(conda shell.bash hook)"
conda activate $CONDA_ENV_NAME

which python
which pip

python -m pip install numpy==1.17.5 torch==1.4.0 torchvision==0.5.0
python -m pip install git+https://github.com/giacaglia/pytube.git --upgrade
python -m pip install -r requirements.txt
