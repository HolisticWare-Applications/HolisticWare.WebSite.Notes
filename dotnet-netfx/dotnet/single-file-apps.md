# Single File Apps

single-file-apps.md

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
