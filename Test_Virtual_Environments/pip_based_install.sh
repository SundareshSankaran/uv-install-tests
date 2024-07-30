#!/usr/bin/env bash

set -euo pipefail

# TEst of pip-based install for packages contained in requirements.txt

pip install --upgrade pip

# Create a virtual env
python -m venv new_env

# Activate virtual env
. new_env/bin/activate

# Install packages
pip install --upgrade -r requirements.txt

# Deactivate virtual env
deactivate

# Remove virtual env folder
rm -rf new_env

