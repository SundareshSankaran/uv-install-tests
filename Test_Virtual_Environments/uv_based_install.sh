#!/usr/bin/env bash

set -euo pipefail

# TEst of uv-based install for packages contained in requirements.txt

# Install uv and upgrade pip
pip install --upgrade pip uv

# Create virtual env using uv
uv venv new_uv_venv

# Activate virtual env
. new_uv_venv/bin/activate

# Install packages from requirements.txt
uv pip install --upgrade -r requirements.txt 

# Deactivate env
deactivate

# REmove virtual env folder
rm -rf new_uv_env