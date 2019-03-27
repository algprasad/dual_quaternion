cmake_minimum_required(VERSION 2.8.3)
project(dual_quaternion)

set(CMAKE_CXX_STANDARD 14)

add_library(dual_quaternion DualQuaternion.h QuaternionOperations.h QuaternionOperations.cpp)
#add_library(dual_quaternion QuaternionOperations.cpp QuaternionOperations.h)
