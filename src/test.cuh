#ifndef TESTCUDA_CUH
#define TESTCUDA_CUH

#include "cuda_runtime.h"
#include "device_launch_parameters.h"

#define TO_HOST true
#define TO_DEVICE false

void add_arrays(float* a, float* b, float* c, int N);

#endif