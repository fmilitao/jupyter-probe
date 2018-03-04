# Jupyter Probe

*Work in Progress.*

Future experiments with Jupyter Notebook...


## Setup

Install `python3` in your machine and then run:

    source ./setup.sh

This will run the `setup.sh` script without forking, so by the end you should be placed in a new python virtual environment with all dependencies installed to `venv/`. (You can also do `. ./setup.sh` if you find it is easier to type.)

Later on you can just do:

    source venv/bin/activate

to return to that the virtual environment.


## Running

Invoke Jupyter with the target file:

    jupyter notebook <FILE>

which should open a new tab in your browser with the Jupyter Notebook environment.

## Notebooks

Location | Purpose | Binder Link
--- | --- | ---
`src/test.ipynb` | initial test | [![Binder](https://mybinder.org/badge.svg)](https://mybinder.org/v2/gh/fmilitao/jupyter-probe/master?filepath=src%2Ftest.ipynb)

Binder links point to https://mybinder.org.
You can also try https://nbviewer.jupyter.org/ to see a non-interactive notebook rendered online.
