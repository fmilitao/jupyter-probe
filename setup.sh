#!/bin/sh

set -e

VENV_DIR=venv

# check python3 exists
command -v python3 >/dev/null 2>&1 || { echo >&2 "python3 is required but not installed. Aborting."; exit 1; }

python3 -m venv ${VENV_DIR}

source ${VENV_DIR}/bin/activate

# The alternative would be to use: pip install -r requirements.txt
# with all requirements placed in that file. Since currently we only have one, not point in doing that.
pip3 install jupyter tabulate

# Needed to make sure `jupyter` command is available
source ${VENV_DIR}/bin/activate

# https://stackoverflow.com/questions/39324039/highlight-typos-in-the-jupyter-notebook-markdown
# For spellchecker in the notebook
pip3 install jupyter_contrib_nbextensions
jupyter contrib nbextension install --user
jupyter nbextension enable spellchecker/main

# show line numbers by default
# https://stackoverflow.com/questions/20197471/how-to-display-line-numbers-in-ipython-notebook-code-cell-by-default
echo 'IPython.Cell.options_default.cm_config.lineNumbers = true;' >> $(find . -iname "custom.js" | grep -v test)
