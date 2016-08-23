#!/bin/bash
# mkdir -p pybind11/include/pybind11
# curl -L https://raw.github.com/pybind/pybind11/blob/master/include/pybind11/attr.h i -O
# ls ../
# ls .

# curl -L https://github.com/pybind/pybind11/archive/master.zip -o master.zip
# unzip /tmp/master.zip
# mv -n pybind11-master pybind11
# ls pybind11

git submodule init
git submodule update
# cd pyIbex
mkdir -p build
# rm -fr build/*
cd build
# echo $(pwd)
# rm ../CMakeCache.txt
# rm -fr ../CMakeFiles


# export MACOSX_DEPLOYMENT_TARGET=10.7

# export CC=gcc-6
# export CXX=g++-6
# export CFLAGS="-mmacosx-version-min=10.7"
# export CXXFLAGS="-stdlib=libc++ -mmacosx-version-min=10.7"
# export LDFLAGS="-stdlib=libc++ -mmacosx-version-min=10.7"

# VERBOSE=1 cmake \
#     -DCMAKE_C_COMPILER=gcc-6 \
#     -DCMAKE_C_FLAGS="-mmacosx-version-min=10.6" \
#     -DCMAKE_CXX_COMPILER=g++-6 \
#     -DCMAKE_CXX_FLAGS="-mmacosx-version-min=10.6" \
#     -DCMAKE_SHARED_LINKER_FLAGS="-mmacosx-version-min=10.6" \
#     -DCMAKE_EXE_LINKER_FLAGS="-mmacosx-version-min=10.6" \
# 	-DCMAKE_INSTALL_PREFIX=$CONDA_PREFIX ..
# -DCMAKE_OSX_DEPLOYMENT_TARGET="10.7" -DCMAKE_CXX_FLAGS="-stdlib=libc++" ..
# export CC=gcc-6
# export CXX=g++-6
cmake -DCMAKE_INSTALL_PREFIX=$CONDA_PREFIX ..
make VERBOSE=1
make test
make install_python
cd ..

# cd $CONDA_PREFIX
# python -m unittest discover -v pyibex.tests


# $PYTHON setup.py build_ext -I ${CONDA_PREFIX}/include:${CONDA_PREFIX}/include/ibex -L ${CONDA_PREFIX}/lib

# $PYTHON setup.py install

# Add more build steps here, if they are necessary.

# See
# http://docs.continuum.io/conda/build.html
# for a list of environment variables that are set during the build process.
