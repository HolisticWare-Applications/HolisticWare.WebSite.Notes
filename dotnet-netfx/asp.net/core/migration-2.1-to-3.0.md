# Migration 2.1 to 3.0

migration-2.1-to-3.0.md

```
HTTP Error 500.30 - ANCM In-Process Start Failure 

    <TargetFramework>netcoreapp2.2</TargetFramework>

    <TargetFramework>netcoreapp3.0</TargetFramework>
```

dotnet run OK


```
Endpoint Routing does not support 'IApplicationBuilder.UseMvc(...)'. 
To use 'IApplicationBuilder.UseMvc' set 'MvcOptions.EnableEndpointRouting = false' inside 
'ConfigureServices(...).'


*   https://devblogs.microsoft.com/aspnet/asp-net-core-updates-in-net-core-3-0-preview-4/

*   https://docs.microsoft.com/en-us/aspnet/core/migration/22-to-30?view=aspnetcore-2.2&tabs=visual-studio#update-routing-startup-code