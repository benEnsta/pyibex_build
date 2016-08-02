#!/bin/bash
# $PYTHON setup.py build_ext -v -I ${CONDA_PREFIX}/include:${CONDA_PREFIX}/include/ibex -L ${CONDA_PREFIX}/lib
$PYTHON setup.py install -v

# Add more build steps here, if they are necessary.

# See
# http://docs.continuum.io/conda/build.html
# for a list of environment variables that are set during the build process.
