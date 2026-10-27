# File based Apps (Single File Apps)

file-based-apps--single-file-apps.md

*   see:

    ```
    HolisticWare.Core.BusinessDomainModels.TemplateRepo/scripts/
    HolisticWare.Core.BusinessDomainModels.TemplateRepo/.agents/skills/

    $HOME/bat/
    ```

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

## include directive

```
#:property ExperimentalFileBasedProgramEnableIncludeDirective=true
```

*   https://github.com/dotnet/sdk/blob/main/documentation/general/dotnet-run-file.md

## shebang


yes:

```bash
#!/usr/bin/env dotnet run
```

no:

```bash
#!/usr/bin/dotnet run
```

no:

```bash
#!/usr/bin/env dotnet
```


*   https://flerka.github.io/personal-blog/2022-06-21-ahead-of-time-compilation/

```xml
<PublishAot>true</PublishAot>
```

*   https://github.com/dotnet/sdk/blob/main/documentation/general/dotnet-run-file.md

*   https://andrewlock.net/exploring-dotnet-10-preview-features-1-exploring-the-dotnet-run-app.cs/

*   https://andrewlock.net/exploring-dotnet-10-preview-features-2-behind-the-scenes-of-dotnet-run-app.cs/


file based

C# file-based apps in .NET 10+ use inline #property directives and the dotnet publish command for release configuration rather than traditional .csproj files. [1, 2, 3] 
## Directives for Release Configuration
File-based apps configure build and release options directly inside the single .cs source file using #property directives. By default, native Ahead-of-Time (AOT) compilation is enabled for performance, but you can tailor release properties like optimization and AOT behavior inline: [1, 2, 3] 


*   PublishAot

    Controls native machine code compilation (#property PublishAot true or false). Set to false if your script uses reflection-heavy libraries that are incompatible with AOT.

*   PublishSingleFile

    Reduces output file count during publishing (#property PublishSingleFile=true).

*   StaticWebAssetsEnabled

    Disables unused assets for lightweight scripts (#property StaticWebAssetsEnabled=false).
* 

## Publishing a File-Based App
To build and package your script for release, use the .NET CLI publish command pointing directly to your source file: [2] 

dotnet publish -c Release app.cs

## Scaling Up
If your release configuration requires complex profiles or multi-file architecture that outgrows single-file limits, convert the script into a standard project using [Microsoft Learn](https://learn.microsoft.com/en-us/dotnet/core/sdk/file-based-apps):

dotnet project convert app.cs

If you'd like, let me know:

* Are you using reflection-heavy libraries (like Newtonsoft.Json) that require AOT adjustments?
* Do you need a cross-platform portable DLL or a native standalone executable?

I can provide the exact inline property combination for your release scenario.

[1] [https://learn.microsoft.com](https://learn.microsoft.com/en-us/dotnet/core/sdk/file-based-apps)
[2] [https://www.youtube.com](https://www.youtube.com/watch?v=EbTHr1qnypk&vl=en&t=831)
[3] [https://remigiuszzalewski.com](https://remigiuszzalewski.com/blog/dotnet10-file-based-apps)



System.CommandLine & Spectre.Console

CliWrap for anything else that needs to wrap raw cli

Bullseye for build/depedency graphs

Microsoft extensions (globbing, DI, ..)

Microsoft.Build.DependencyGraph

NuGet.* packages

YamlDotNet / JsonSchema.Net

Microsoft Test Platform server-mode source client & coverlet.MTP

LibGit2Sharp

Microsoft.VisualStudio.SolutionPersistence
