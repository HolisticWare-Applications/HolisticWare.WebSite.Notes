# Unable to find SDK `Microsoft.NET.SDK.Workload.AutoImportPropsLocator` SDK not found

unable-to-find-sdk--microsoft.net.sdk.workload.autoimportpropslocator--sdk-not-found.md

```
Unable to find SDK 
    `Microsoft.NET.SDK.Workload.AutoImportPropsLocator` 
SDK not found
```


A workaround is to remove the sdk-manifests directory 

    /usr/local/share/dotnet/sdk-manifests/6.0.100 

and then install the  .NET 6 preview sdk again.

ref: 

*   https://developercommunity.visualstudio.com/t/monodevelopcoreuserexception-unable-to-find-sdk-mi/1459162#T-N1460014

*   https://learn.microsoft.com/en-us/answers/questions/478249/sdk-package-not-found-34microsoftnetsdkworkloadaut.html

If None of the above worked. 

Try setting the 

```
MSBuildEnableWorkloadResolver = false
``` 

environment variable.

If you turn on Diagnostic log verbosity, the first thing listed in the build log will be 
the environment variables used for the build. The way that I was trying to set this 
environment variable was not effecting VisualStudio!


the most systemic way to set environment variables in MacOS is through `launchctl`:

```
launchctl setenv MSBuildEnableWorkloadResolver false
```
