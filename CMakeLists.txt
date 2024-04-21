cmake_minimum_required(VERSION 3.18)
project(Sentinel LANGUAGES CUDA CXX VERSION 0.0.0)
set (CMAKE_CXX_STANDARD 20)
add_executable(Sentinel src/main.cpp src/test.cu src/test.cuh src/debug.cuh src/debug.cu) 
set_target_properties(Sentinel PROPERTIES CUDA_ARCHITECTURES "75") #Add whatever gpu you're using here.