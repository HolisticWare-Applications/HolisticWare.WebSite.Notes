# dotnet Microservices


dotnet-microservices.md

## .NET Conf: Focus on Microservices

*   https://focus.dotnetconf.net/

    *   https://github.com/dotnet-presentations/dotNETConf/tree/master/2020/FocusOnMicroservices

    *   https://www.youtube.com/playlist?list=PLdo4fOcmZ0oUc2ShrReCS7KoBbPEONE0p

*   https://dotnet.microsoft.com/apps/aspnet/microservices


*   content

    *   dotnet

    *   microservices

    *   containers

    *   kubernetes

*   microservices

    *   independent deployments

    *   improved scale and resource utilization per service

    *   modular

        *   smaller, focused teams

*   containers

    *   Virtual Machines (VM)

        *   layers

            *   guest OS

            *   libraries

            *   apps

        *   virtualizing hardware

        *   VM as units of scaling

        *   delpoyment tools

            *   Chef

            *   Puppet

    *   containers

        *   layers

            *   libraries

            *   apps

        *   virtualizing OS

        *   apps as units of scaling

        *   orchestration engine

            *   kubernetes

                *   widely used

                *   vendor independent/neutral

                    *   Azure

                    *   AWS

                    *   Google Cloud

                    *   VM-Ware

                *   huge community

*   kubernetes

    *   Kubernetes control communicates with Master node containing API server to achieve desired state

    *   Master node enforce state on Worker nodes

    *   Worker node support communication between containers

    *   Worker nodes support communication from internet (external)

*   Microsoft/dotnet cloud native investments

    *   APIs

        *   REST

            *   Open API

            *   API REPL

                *   for API design, implementation and debugging

            *   client generation

            *   publish to APIM

            *   usage
            
                *   external internet facing APIs

        *   gRPC 

            *   contract based API

            *   generate server and client from proto files

            *   high performance

            *   usage
            
                *   internal intra-cloud APIs

    *   faster xplat development with WSL and Linux

    *   smaller microservices

        *   single file exe

        *   top level C# programs

    *   high performance revrse proxy 
    
        *   YARP yet another reverse proxy

    *   opinionated .NET microservices and orchestration tools (Tye)

        *   project Tye

            *   build, debug and deploy microservices faster

            *   service discovery via configuration conventions in frontend

            *   add dependencies w/o docker files

                *    DB    

                *   cache

            *   run and debug locally using containers (docker) or kubernetes

            *   local dashboard

                *   metrics (memory...)

                *   logging

                *   debugging


## Demos

*   demo 01

    *   Web API 

        *   Open API support
            
            *   nuget   `SwashbuckleAspNetCore`

                *   `{url}/swagger`

                *   `{url}/swagger/{version}/swagger.json`

        *   using `swagger.json` from browser like HttpRepl (VS4Windows) 


```
dotnet \
    publish \
        -r win-x64 \
        -c Release \
        /p:PublishSingleFile=true \
        /p:PublishTrimmed=true \
```

*   `PublishSingleFile=true`

    *   dotnet CLR (runtime)

    *   App/service

*   `PublishTrimmed=true`

    *   link (remove unused APIs)


*   David Fowler

    *   microservice

        *    something runnable

            *   Web App

            *   Web API

            *   gRPC service

    *   app 

        *   set of microservices working together

*   sample

    *   Weather

        *   AccuWeather

            *   in the Demo

        *   OpenWeatherMap

            *   https://openweathermap.org/


### Tye

*   https://github.com/dotnet/tye

*   https://github.com/dotnet/tye/blob/master/docs/getting_started.md


```
dotnet tool uninstall   -g Microsoft.Tye
dotnet tool install     -g Microsoft.Tye
```

currently not stable, so:

```
dotnet tool install   -g Microsoft.Tye --version "0.4.0-alpha.20371.1"
```

to run app (set of microservices) locally from folder where solution resides:

```
tye run 
```

run it in docker:


```
tye run --docker
```

To get yaml configuration

```
tye init
```


## Why care about microservices?

*   https://www.youtube.com/watch?v=7hY6fggwHqU&list=PLdo4fOcmZ0oUc2ShrReCS7KoBbPEONE0p&index=3&t=0s

*   microservces 

    *   scale teams

## Stay Sharp


## Nanoserivces

*   https://anthonygiretti.com/2020/06/29/nano-services-with-asp-net-core-or-how-to-build-a-light-api/


## `steeltoe`

