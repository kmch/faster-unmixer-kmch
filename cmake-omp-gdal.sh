#!/bin/bash

# For GDAL to be found, first run:
# >>> conda activate river
# or:
# >>> conda activate unmixing
# Modify the paths below, to match your system configuration!

cmake -DCMAKE_PREFIX_PATH=/opt/homebrew/opt/libomp/include \
-DOpenMP_CXX_FLAGS="-Xpreprocessor -fopenmp -I/opt/homebrew/opt/libomp/include" \
-DOpenMP_CXX_LIB_NAMES="omp" \
-DOpenMP_omp_LIBRARY=/opt/homebrew/opt/libomp/lib/libomp.dylib \
-DGDAL_INCLUDE_DIR=/Users/kmc3817/miniconda3/envs/river/include \
-DGDAL_LIBRARY_DIR=/Users/kmc3817/miniconda3/envs/river/lib/libgdal.dylib \
-DCMAKE_BUILD_TYPE=RelWithDebInfo -DUSE_GDAL=ON ..