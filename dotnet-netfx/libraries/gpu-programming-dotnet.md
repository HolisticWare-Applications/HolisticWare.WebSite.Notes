# GPU programming with .NET


gpu-programming-dotnet.md

*   https://softwarehut.com/blog/general-purpose-computing-gpu-net-world-part-1/

*   https://softwarehut.com/blog/general-purpose-computing-gpu-net-world-part-2/

*   http://nugetmusthaves.com/Tag/GPU

*   http://nugetmusthaves.com/Tag/OpenCL

*   https://www.infoq.com/news/2017/12/hybridizer




*   native C++ (CUDA) library in a separate project + P/Invoke

*   CUDA bidnings (wrappers - which will surface entire CUDA API) 
    
    *   no need for Pinvoke (DLLImports)

    *   free/opensource/proprietary compilers 
    
        *   generate cuda (either source or binary)

        *   list:

            *   Microsoft Brainwave was Microsoft Accelerator

            *   ManagedCuda

            *   GPU.NET

            *   Cudafy

            *   Hybridizer

            *   AleaGPU

            *   brahma

            *   C$

|                     |   CUDA                               | OpenCL                      | 
|---------------------| ------------------------------------ | --------------------------- | 
| GPU (Graphic Cards) | NVIDIA                               | all (AMD, NVIDIA)           | 
| Alea                | [x]                                  | []                          | 



## Libraries

*   campy

    *   http://campynet.com/

    *   https://github.com/kaby76/campy

*   OpenCL
    
    *   https://www.codeproject.com/Articles/1116907/How-to-Use-Your-GPU-in-NET

    *   https://www.codeproject.com/Articles/502829/GPGPU-image-processing-basics-using-OpenCL-NET

    *   https://www.codeproject.com/Articles/1116907/How-to-Use-Your-GPU-in-NET

    *   http://www.cmsoft.com.br/opencl-tutorial/

*   NOpenCL

    *   https://github.com/tunnelvisionlabs/NOpenCL

*   OpenCL.NET

    *   https://github.com/aquavit/OpenCL.Net

*   Hybridizer

    *   Commercial (free version available)

    *   https://devblogs.nvidia.com/hybridizer-csharp/

    *   https://marketplace.visualstudio.com/items?itemName=altimesh.AltimeshHybridizerExtensionEssentials

*   AleaGPU

    *   Commercial (free version available)
    
    *   http://www.aleagpu.com/release/3_0_3/doc/

    *   https://www.nuget.org/packages/Alea/

*   brahma

    *   https://brahma.codeplex.com/

*   GPU.NET

    *   https://github.com/tidepowerd/GPU.NET-Example-Projects

*   ILGPU

    *   http://www.ilgpu.net/

    *   https://github.com/m4rs-mt/ILGPU.Samples

*   Cudafy

    *   https://archive.codeplex.com/?p=cudafy

    *   https://github.com/svn2github/cudafy

    *   https://stackoverflow.com/questions/40017649/how-to-return-a-value-from-cudafy-c-sharp-gpu-calculation

    *   http://w8isms.blogspot.hr/2012/09/cudafy-me-part-1-of-4.html

    *   http://w8isms.blogspot.hr/2012/09/cudafy-me-part-2-of-4.html

    *   http://w8isms.blogspot.hr/2012/09/cudafy-me-part-3-of-4.html

    *   http://w8isms.blogspot.hr/2012/09/cudafy-me-part-4-of-4.html

*   Cloo

    *   https://sourceforge.net/projects/cloo/

*   C$

    https://archive.codeplex.com/?p=cbucks


*   Microsoft Brainwave (Microsoft Accelerator)

    https://www.microsoft.com/en-us/research/?from=http%3A%2F%2Fresearch.microsoft.com%2Fen-us%2Fprojects%2Faccelerator%2F

*   ManagedCuda 8.0 

    *   https://www.nuget.org/packages/ManagedCuda-80/

    *   http://kunzmi.github.io/managedCuda/

*   CSCuda 

    *   https://www.nuget.org/packages/CSCuda/ 

    *   https://github.com/DNRY/CSCuda   



## Parallel.for

*   Alea

    *   http://www.quantalea.com/features/gpu-parallel-for/

*   Campy

    *   https://github.com/kaby76/Campy/blob/master/Tests/FFT/UnitTest1.cs

*   Hybridizer


## Details


*   https://stackoverflow.com/questions/375011/utilizing-the-gpu-with-c-sharp

*   http://nugetmusthaves.com/Tag/GPU


https://github.com/Sergio0694/NeuralNetwork.NET