# Aspire Repro

repro.md

*   https://github.com/dotnet/aspire/discussions/5581

## [Re]Solution AKA Workaround

The above is because you are resolving it too early. If you want to print the endpoint then you can 
resolve it after Starting:

```csharp
var builder = DistributedApplication.CreateBuilder(args);

var appA = builder.AddNpmApp("app-a", "../app-a")
.WithHttpEndpoint(env: "PORT")
.WithExternalHttpEndpoints()
.PublishAsDockerFile();

var httpEndpoint = appA.GetEndpoint("http");

var app = builder.Build();

app.Start();

Console.WriteLine($"URL: {httpEndpoint.Url}");

app.WaitForShutdown();
```


## Original

This is duplicate of issue reported in eShop, 

https://github.com/dotnet/eShop/issues/228

but it needs more love, so adding it here.


Cleanup

```bash
rm -fr AppAspireRepro/
```

Create minimal sample

```bash
dotnet new aspire-starter -o AppAspireRepro
```

Run:

```bash
dotnet run --project AppAspireRepro/AppAspireRepro.AppHost/AppAspireRepro.AppHost.csproj
```

Now add:

```csharp
Console.WriteLine($"IP          {apiService.GetEndpoint("http").Url}");
Console.WriteLine($"IP          {apiService.GetEndpoint("https").Url}");
```

before:

```csharp
builder.Build().Run();
```

Run again 

```bash
dotnet run --project AppAspireRepro/AppAspireRepro.AppHost/AppAspireRepro.AppHost.csproj
```

and watch Der Untergang:

```
Building...
Unhandled exception. System.InvalidOperationException: The endpoint `http` is not allocated for the resource `apiservice`.
   at Aspire.Hosting.ApplicationModel.EndpointReference.get_AllocatedEndpoint() in /_/src/Aspire.Hosting/ApplicationModel/EndpointReference.cs:line 107
   at Aspire.Hosting.ApplicationModel.EndpointReference.get_Url() in /_/src/Aspire.Hosting/ApplicationModel/EndpointReference.cs:line 104
   at Program.<Main>$(String[] args) in /Users/Shared/Projects/d/Samples-Playgrounds/gh/Blazor.FluentUI/samples/code-sharing/AppAspireRepro/AppAspireRepro.AppHost/Program.cs:line 9
```

```json
{
  "$schema": "https://json.schemastore.org/launchsettings.json",
  "profiles": {
    "https": {
      "commandName": "Project",
      "dotnetRunMessages": true,
      "launchBrowser": true,
      "applicationUrl": "https://localhost:17226;http://localhost:15071",
      "environmentVariables": {
        "ASPNETCORE_ENVIRONMENT": "Development",
        "DOTNET_ENVIRONMENT": "Development",
        "DOTNET_DASHBOARD_OTLP_ENDPOINT_URL": "https://localhost:21213",
        "DOTNET_RESOURCE_SERVICE_ENDPOINT_URL": "https://localhost:22154"
      }
    },
    "http": {
      "commandName": "Project",
      "dotnetRunMessages": true,
      "launchBrowser": true,
      "applicationUrl": "http://localhost:15071",
      "environmentVariables": {
        "ASPNETCORE_ENVIRONMENT": "Development",
        "DOTNET_ENVIRONMENT": "Development",
        "DOTNET_DASHBOARD_OTLP_ENDPOINT_URL": "http://localhost:19041",
        "DOTNET_RESOURCE_SERVICE_ENDPOINT_URL": "http://localhost:20229"
      }
    }
  }
}
```