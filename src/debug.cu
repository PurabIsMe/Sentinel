#include "debug.cuh"

void print_array(const char* name, float* array, size_t size, bool is_on_host){
    std::cout << name << ": \n[";
    if(is_on_host){
        for(int i = 0; i < size; i++){
            std::cout << array[i] << ", ";
        }
        std::cout << "]\n";
    }
    else{
        float* dst = (float*)malloc(sizeof(float) * size);
        cudaMemcpy(dst,array, sizeof(float)*size, cudaMemcpyDeviceToHost);
        cudaDeviceSynchronize();
        for(int i = 0; i < size; i++){
            std::cout << dst[i] << ", ";
        }
        std::cout << "]\n";
    }
}

void spawn_device(void** dst, const void* src, size_t size, cudaMemcpyKind kind){
    cudaMalloc(dst, size);
    cudaMemcpy(*dst, src, size, kind);
}