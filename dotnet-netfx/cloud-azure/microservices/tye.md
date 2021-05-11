# Tye

tye.md



Project Tye is an experimental developer tool that makes developing, testing, and deploying microservices and distributed applications easier.

https://github.com/dotnet/tye


Tye is a developer tool that makes developing, testing, and deploying microservices and distributed applications easier. Project Tye includes a local orchestrator to make developing microservices easier and the ability to deploy microservices to Kubernetes with minimal configuration.


https://github.com/dotnet/tye/blob/main/docs/README.md


Tye can:

Simplify microservices development by making it easy to:
Run many services with one command
Use dependencies in containers
Discover addresses of other services using simple conventions
Deploy .NET applications to Kubernetes by:
Automatically containerizing .NET applications
Generating Kubernetes manifests with minimal knowledge or configuration
Using the same conventions as development to keep it consistent

```
dotnet tool install -g Microsoft.Tye --version "0.6.0-alpha.21070.5"
```
OR if you already have Tye installed and want to update:

```
dotnet tool update -g Microsoft.Tye --version "0.6.0-alpha.21070.5"
```

```
dotnet tool uninstall -g \
    Microsoft.Tye
dotnet tool   install -g \
    Microsoft.Tye \
    --version "0.6.0-alpha.21070.5"
```

```
mkdir microservices
cd microservices
```

```
mkdir microservices
cd microservices
```

Create a frontend project:

```
dotnet new \
    razor \
    -n frontend-razor
```

Run this new project with tye command line:

```
tye run \
    frontend
```


```
dotnet new \
    webapi \
    -n backend-webapi

dotnet new \
    grpc \
    -n backend-grpc

```

```
dotnet new \
    blazorserver \
    -n frontend-blazorserver

dotnet new \
    blazorwasm \
    -n frontend-wasm
```    


Create a solution file and add both projects

```
dotnet new sln
dotnet sln add \
    frontend-razor \
    frontend-blazorserver \
    frontend-blazorwasm \
    backend
```

