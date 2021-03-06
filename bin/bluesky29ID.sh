#!/bin/bash

# purpose: start bluesky for instrument operations at 29ID

export CONDA_ENVIRONMENT=bluesky_2020_1
export CONDA_ACTIVATE=/APSshare/miniconda/x86_64/bin/activate
export IPYTHONDIR=~/.ipython-bluesky
export IPYTHON_PROFILE=bluesky

IPYTHON_OPTIONS=
IPYTHON_OPTIONS="${IPYTHON_OPTIONS} --profile=${IPYTHON_PROFILE}"
IPYTHON_OPTIONS="${IPYTHON_OPTIONS} --ipython-dir=${IPYTHONDIR}"
IPYTHON_OPTIONS="${IPYTHON_OPTIONS} --IPCompleter.use_jedi=False"

source ${CONDA_ACTIVATE} ${CONDA_ENVIRONMENT}

ipython ${IPYTHON_OPTIONS}
