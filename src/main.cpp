#include <iostream>
#include "test.cuh"
#include "debug.cuh"

int main(){
    std::cout << "Hello world!\n";
    float a[] = {0,1,2,3,4,5,6,7,
                0,1,2,3,4,5,6,7,
                0,1,2,3,4,5,6,7,
                0,1,2,3,4,5,6,7,
                0,1,2,3,4,5,6,7,
                0,1,2,3,4,5,6,7,
                0,1,2,3,4,5,6,7,
                0,1,2,3,4,5,6,7};
    float b[] = {0,1,2,3,4,5,6,7,
                0,1,2,3,4,5,6,7,
                0,1,2,3,4,5,6,7,
                0,1,2,3,4,5,6,7,
                0,1,2,3,4,5,6,7,
                0,1,2,3,4,5,6,7,
                0,1,2,3,4,5,6,7,
                0,1,2,3,4,5,6,7};
    float c[]= {0,1,2,3,4,5,6,7,
                0,1,2,3,4,5,6,7,
                0,1,2,3,4,5,6,7,
                0,1,2,3,4,5,6,7,
                0,1,2,3,4,5,6,7,
                0,1,2,3,4,5,6,7,
                0,1,2,3,4,5,6,7,
                0,1,2,3,4,5,6,7};

    float* ag, *bg, *cg;
    
    spawn_device((void**)&ag, a, sizeof(float) * 64, cudaMemcpyHostToDevice);
    spawn_device((void**)&bg, a, sizeof(float) * 64, cudaMemcpyHostToDevice);
    spawn_device((void**)&cg, a, sizeof(float) * 64, cudaMemcpyHostToDevice);

    
    add_arrays((float*)ag, (float*)bg, (float*)cg, 64);

    print_array("sum",cg, 64, false);
    print_array("original",c, 64, true);
}