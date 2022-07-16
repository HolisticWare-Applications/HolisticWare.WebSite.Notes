# Invalid framework identifier ''

invalid-framework-identifier-empty-string.md



```
"/Users/Shared/Projects/d/X/AX/wsu-20220629/samples/BuildAll/BuildAll.sln" (Restore target) (1) ->
    (Restore target) -> 
    /Library/Frameworks/Mono.framework/Versions/6.12.0/lib/mono/msbuild/Current/bin/NuGet.targets(131,5): 
    error : Invalid framework identifier ''. 
    [/Users/Shared/Projects/d/X/AX/wsu-20220629/samples/BuildAll/BuildAll.sln]
```


*   missing `Directory.*.*`

    *   https://stackoverflow.com/questions/57617401/invalid-framework-identifier-dotnet-restore-docker-build

*   filesystem case sensitivity `Directory.*.*`

    *   https://github.com/NuGet/Home/issues/10423

*   duplicate TFMs

    *   https://stackoverflow.com/questions/60816600/error-occurred-while-restoring-nuget-packages-invalid-restore-input-no-target

*   `TargetFramework` defined in `Directory.Build.props`

    *   https://forum.ncrunch.net/yaf_postst2916_Target-Framework-defined-in-Directory-Build-props-causes-ncrunch-to-fail.aspx

*   `TargetFrameworks` vs `TargetFramework`

    *   https://stackoverflow.com/questions/43072097/build-errors-when-multi-targeting-in-csproj-file

*   `msbuild` vs `dotnet build`

    *   https://bytemeta.vip/repo/dotnet/maui/issues/2754




