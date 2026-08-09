# Benchmarking

benchmarking.md

*   Benchmarking Web API REST

    *   https://github.com/dotnet/BenchmarkDotNet/issues/1432

    *   https://github.com/dotnet/BenchmarkDotNet/issues/659#issuecomment-368257044

    *   https://medium.com/codenx/benchmarking-rest-api-using-benchmark-net-in-net-8-ba7701aa4bcb


*   wrk 

    *   http client benchmarking tool
    
        *   used when benchmarking TechEmpower 
        
        *   https://github.com/wg/wrk 
        
            *   Linux only

*   wrk2

    *   http client benchmarking tool 
    
        *   optimized for latency testing 
        
            *   https://github.com/giltene/wrk2 
            
                *   Linux only

*   bombardier

    *   go based http client benchmarking tool 
    
    *   https://github.com/codesenberg/bombardier 
    
        *   cross-platform

```shell
dotnet tool install -g Microsoft.Crank.Controller --version "0.2.0-*" 

dotnet tool install -g Microsoft.Crank.Agent --version "0.2.0-*" 
```

*   https://github.com/dotnet/crank/blob/main/docs/getting_started.md

*   https://www.youtube.com/watch?v=2IgfrnG-128


*   https://medium.com/@anton.baksheiev/performance-comparison-grpc-vs-rest-api-in-net-c-part-1-a27291e98f55

*   https://github.com/abaksheiev/PerfTest-grpc-restapi

*   https://itnext.io/benchmarking-and-monitoring-exploring-api-and-grpc-performance-with-docker-3150b190289a

