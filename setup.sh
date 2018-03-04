#!/bin/sh

set -e

VENV_DIR=venv

# check python3 exists
command -v python3 >/dev/null 2>&1 || { echo >&2 "python3 is required but not installed. Aborting."; exit 1; }

python3 -m venv ${VENV_DIR}

source ${VENV_DIR}/bin/activate

# The alternative would be to use: pip install -r requirements.txt
# with all requirements placed in that file. Since currently we only have one, not point in doing that.
pip3 install jupyter

# Needed to make sure `jupyter` command is available
source ${VENV_DIR}/bin/activate