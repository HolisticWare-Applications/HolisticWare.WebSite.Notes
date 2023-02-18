# Custom

custom.md


Azure DevOps GPS-FB pipeline


```
push "$(System.DefaultWorkingDirectory)\GooglePlayServicesFirebase\nuget-signed\*.nupkg" `
    -NonInteractive -Source https://api.nuget.org/v3/index.json -ApiKey "$(NuGet.ApiKey)" `
    -SkipDuplicate -NoSymbols -Verbosity Detailed
```

Timeout parameter added (not divdable by 60):

```
push "$(System.DefaultWorkingDirectory)\GooglePlayServicesFirebase\nuget-signed\*.nupkg" `
    -NonInteractive -Source https://api.nuget.org/v3/index.json -ApiKey "$(NuGet.ApiKey)" `
    -SkipDuplicate -NoSymbols -Verbosity Detailed -Timeout 2401
```

https://jfrog.com/knowledge-base/how-to-resolve-nuget-push-failures-after-5-minutes-even-though-timeout-value-is-set-as-greater-than-5-minutes-300-seconds/

https://github.com/NuGet/Home/issues/5267

