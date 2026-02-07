# Issues with Visual Studio for Mac 2022

issues-wth-visual-studio-for-mac-2022.md

```
Getting restore information for project /Users/Shared/Projects/d/Samples-Playgrounds/MAUI/samples/issues-repro-samples/7399/MauRepro/HolisticWare.MAUI.WebView.Custom/HolisticWare.MAUI.WebView.Custom.csproj
/usr/local/share/dotnet/sdk/6.0.113/Sdks/Microsoft.NET.Sdk/targets/Microsoft.NET.TargetFrameworkInference.targets(112,5) : 
    error NETSDK1139: 
        The target platform identifier android was not recognized.
Unable to create package spec for project. 
'/Users/Shared/Projects/d/Samples-Playgrounds/MAUI/samples/issues-repro-samples/7399/MauRepro/HolisticWare.MAUI.WebView.Custom/HolisticWare.MAUI.WebView.Custom.csproj'
```


## Workaround/[Re]Solution

### 

1.  remove Xamarin.Forms projects from the solution and the folder subtree

2.  
