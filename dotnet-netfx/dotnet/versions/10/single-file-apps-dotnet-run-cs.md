# Single File Apps

single-file-apps-dotnet-run-cs.md

*   Allow creating full stand-alone C# programs in a single .cs #3502

    *   https://github.com/dotnet/csharplang/issues/3502

    *   No projects just C# with `dotnet run app.cs` | DEM518

        *   https://www.youtube.com/watch?v=98MizuB7i-w

*   https://github.com/dotnet/sdk/blob/main/documentation/general/dotnet-run-file.md#multiple-c-files

*   https://learn.microsoft.com/en-us/dotnet/csharp/fundamentals/tutorials/file-based-programs

*   https://www.reddit.com/r/dotnet/comments/1l43vzg/vs_code_net_run_any_cs_file_instantly/

*   https://www.milanjovanovic.tech/blog/exploring-csharp-file-based-apps-in-dotnet-10

*   Support multiple files in dotnet run #48174

    *   https://github.com/dotnet/sdk/issues/48174




## Cake

*   https://www.devlead.se/posts/2025/2025-07-28-migrating-to-cake-sdk

*   https://www.reddit.com/r/dotnet/comments/1mbsh0y/modernizing_cake_build_scripts_with_the_new_sdk/

*   https://cakebuild.net/blog/2025/07/dotnet-cake-cs    

*   GitHub Actions DevOps Pipelines as Code using C# and Cake SDK
    
    *   https://www.youtube.com/watch?v=e7hkKyQEcN8
    
    *   https://github.com/azurevoodoo/dotnetconf2025

*   https://cakebuild.net/dsl/process/

*   https://cakebuild.net/api/Cake.Common/ProcessAliases/34E38D20

```csharp
#import build/cake/setup-environment.cake.cs
#import build/cake/update-config.cake.cs
#import build/cake/tests.cake.cs
#import build/cake/gps-parameters.cake.cs
#import build/cake/binderate.cake.cs
#import build/cake/build-and-package.cake.cs
#import build/cake/validations.cake.cs
#import build/cake/executive-order.cake.cs
#import build/cake/clean.cake.cs
#import build/cake/performance-timings.cake.cs
```

*   https://github.com/Samples-Playgrounds/Samples.Blazor.FluentUI/blob/main/samples/code-sharing/Sample.net10/create-app-suite-simple.cake.cs

```shell
dotnet run *.cs
```

*   https://andrewlock.net/exploring-dotnet-10-preview-features-1-exploring-the-dotnet-run-app.cs/

## Samples

### Repos

*   https://github.com/DamianEdwards/runfile

```csharp
#!/usr/local/share/dotnet/dotnet run

#!/usr/bin/env dotnet
```
