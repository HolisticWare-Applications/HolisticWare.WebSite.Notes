# `dotnet` Microservices vs Monolyths

dotnet-microservices-vs-monolyths.md

*   definitions

    *   microservices

        *   multiple isolated processes 
        
            *   multiple apps
            
                *   multiple entry points
                
                *   multiple main entry points

            *   .NET Microservices Sample Reference Application
        
                *   https://github.com/dotnet-architecture/eShopOnContainers

                    *   https://github.com/dotnet-architecture/eShopOnContainers/tree/dev/src/Services

                        *   https://github.com/dotnet-architecture/eShopOnContainers/blob/dev/src/Services/Basket/Basket.API/Program.cs

                        *   https://github.com/dotnet-architecture/eShopOnContainers/blob/dev/src/Services/Catalog/Catalog.API/Program.cs

                        *   https://github.com/dotnet-architecture/eShopOnContainers/blob/dev/src/Services/Identity/Identity.API/Program.cs

                        *   https://github.com/dotnet-architecture/eShopOnContainers/blob/dev/src/Services/Ordering/Ordering.API/Program.cs

                        *   https://github.com/dotnet-architecture/eShopOnContainers/blob/dev/src/Services/Payment/Payment.API/Program.cs

                        *   https://github.com/dotnet-architecture/eShopOnContainers/blob/dev/src/Services/Webhooks/Webhooks.API/Program.cs

        *   mutiple deployments
        
    *   monolyth

        *   single process 
        
            *   single app 
            
                *   single entry point
                
                *   single main entry point

        *   single deployment

*   https://dotnet.microsoft.com/en-us/learn/aspnet/microservices-architecture

*   Microservices are small, modular, and independently deployable services. 

*   Docker containers (for Linux and Windows) simplify deployment and testing by 
    bundling a service and its dependencies into a single unit, which is then 
    run in an isolated environment.

*   .NET Microservices: Architecture for Containerized .NET Applications

    *   https://learn.microsoft.com/en-us/dotnet/architecture/microservices/

*   Cloud-native e-book

    *   https://learn.microsoft.com/en-us/dotnet/architecture/cloud-native/

        *   defines cloud native, 
        
        *   introduces a sample app built using cloud-native principles, and 
        
        *   covers topics common to most cloud-native applications.

*   DAPR - Distributed Application Runtime

    *   https://learn.microsoft.com/en-us/dotnet/architecture/dapr-for-net-developers/

*   .NET microservices tutorial

    *   .NET Tutorial - Your First Microservice
    
        *   https://dotnet.microsoft.com/en-us/learn/aspnet/microservice-tutorial/intro

        *   TODO

            *   links in video

            *   notes

        *   DONE

            *   watching

        *   What is Docker, Why use it? | Docker and .NET Core 101 [1 of 3]

            *   https://www.youtube.com/watch?v=vmnvOITMoIg

        *   Docker Tooling in Visual Studio | Docker and .NET Core 101 [2 of 3]

            *   https://www.youtube.com/watch?v=k2sskhYEPkI

        *   Publishing your Containerized Web App | Docker and .NET Core 101 [3 of 3]

            *   https://www.youtube.com/watch?v=d7D0h9i-QCw

*   .NET microservices Learn module

    *   Create and deploy a cloud-native ASP.NET Core microservice

        *   https://learn.microsoft.com/en-us/training/modules/microservices-aspnet-core/

*   eShopOnContainers sample application

    concepts from the e-book implemented in a sample application

    *   https://github.com/dotnet-architecture/eShopOnContainers


DevOps for containerized apps e-book
This guide introduces the basic concepts of building a development lifecycle around Azure using .NET tools and processes. After finishing this guide you'll have the knowledge needed to build a mature DevOps toolchain.

    https://learn.microsoft.com/en-us/dotnet/architecture/containerized-lifecycle/

Modernizing existing .NET apps e-book
Learn how to move your existing .NET Framework server applications directly to the cloud by modernizing specific areas, without re-architecting or recoding entire applications.

    https://learn.microsoft.com/en-us/dotnet/architecture/modernize-with-azure-containers/
