#ifndef DEBUG_H
#define DEBUG_H

#include "cuda_runtime.h"
#include "device_launch_parameters.h"
#include <iostream>
#include "test.cuh"


void print_array(const char* name, float* array, size_t size, bool is_on_host = true);

void spawn_device(void** dst, const void* src, size_t size, cudaMemcpyKind kind);

#endif