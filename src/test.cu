#include "test.cuh"

// Kernel definition
__global__ void VecAdd(float* A, float* B, float* C)
{
    int i = threadIdx.x;
    C[i] = A[i] + B[i];
}

void add_arrays(float* a, float* b, float* c, int N){
    VecAdd<<<1, N>>>(a, b, c);
    cudaDeviceSynchronize();
}

