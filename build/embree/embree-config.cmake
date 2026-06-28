## Copyright 2009-2021 Intel Corporation
## SPDX-License-Identifier: Apache-2.0

# use default install config
INCLUDE("${CMAKE_CURRENT_LIST_DIR}/embree-config-install.cmake")

# and override path variables to match for build directory
SET(EMBREE_INCLUDE_DIRS /home/cip/medtech2022/ha44nily/Global_illumination/a03/a03/deps/embree/include)
SET(EMBREE_LIBRARY /home/cip/medtech2022/ha44nily/Global_illumination/a03/a03/build/embree/libembree4.a)
SET(EMBREE_LIBRARIES ${EMBREE_LIBRARY})
