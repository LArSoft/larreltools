# CMakeLists.txt file for larreltools

#  This simply copies files into an install directory - there is no build

CMAKE_MINIMUM_REQUIRED (VERSION 3.2)

project(larreltools VERSION 1.12.04 LANGUAGES NONE)

# cetbuildtools contains our cmake modules
find_package(cetbuildtools REQUIRED)

include(CetCMakeEnv)

# larreltools has no architecture dependence
cet_cmake_env( noarch )

# Make sure cetbuildtools is set up (version is minimum)
find_ups_product(cetbuildtools)

# source code
add_subdirectory(scripts)
add_subdirectory(expert)
add_subdirectory(ups)

# packaging utility
include(UseCPack)


