#include "cuda_runtime.h"
#include "device_launch_parameters.h"

#include <stdio.h>
#include <iostream>

__global__ void hello_cuda()
{
    printf("Hello Cuda \n");
}

int main()
{
    hello_cuda <<<4,5>>> ();
    cudaDeviceSynchronize();
    cudaDeviceReset();
    return 0;
}