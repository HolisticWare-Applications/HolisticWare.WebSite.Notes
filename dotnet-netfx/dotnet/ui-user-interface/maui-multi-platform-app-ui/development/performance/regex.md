# `Regex`

regex.md

## TODO

priority:

1.  source generated

2.  static (cached) `Regex`

3.  `Lazy<Regex>`

4.  avoid obsoleted `Regex.CompileToAssembly` Method

    https://learn.microsoft.com/en-us/dotnet/api/system.text.regularexpressions.regex.compiletoassembly

## Analysis

### Benchmarks

| Method                                                            | Mean            | Error        | StdDev       | Gen0   | Gen1   | Allocated |
|------------------------------------------------------------------ |----------------:|-------------:|-------------:|-------:|-------:|----------:|
| Method_Local_Static_Call_Regex_Match_None                         |        77.51 ns |     0.185 ns |     0.154 ns |      - |      - |         - |
| Method_Local_Static_Call_Regex_Match_Compiled                     |        28.79 ns |     0.073 ns |     0.061 ns |      - |      - |         - |
| Method_Local_Object_Regex_Match_None                              |     2,633.23 ns |    21.558 ns |    20.165 ns | 0.7210 | 0.0076 |    6032 B |
| Method_Local_Object_Regex_Match_Compiled                          | 1,237,030.47 ns | 8,126.061 ns | 6,785.629 ns | 1.9531 |      - |   20292 B |
| Method_Local_Lazy_Object_Regex_Match_None                         |     2,627.17 ns |     7.584 ns |     6.723 ns | 0.7286 | 0.0076 |    6104 B |
| Method_Local_Lazy_Object_Regex_Match_Compiled                     | 1,239,442.82 ns | 8,208.376 ns | 7,276.511 ns | 1.9531 |      - |   20363 B |
| Class_Member_Object_Regex_Match_None                              |        74.68 ns |     0.223 ns |     0.197 ns |      - |      - |         - |
| Class_Member_Object_Regex_Match_Compiled                          |        24.96 ns |     0.096 ns |     0.090 ns |      - |      - |         - |
| Class_Static_Member_Object_Regex_Match_None                       |        74.76 ns |     0.269 ns |     0.239 ns |      - |      - |         - |
| Class_Static_Member_Object_Regex_Match_Compiled                   |        24.48 ns |     0.039 ns |     0.033 ns |      - |      - |         - |
| Class_Static_Member_Object_Regex_Match_SourceCodeGenerated_Method |        25.24 ns |     0.064 ns |     0.060 ns |      - |      - |         - |


### MAUI Code - Usage in MAUI

https://github.com/search?q=repo%3Adotnet%2Fmaui%20Regex&type=code

## Analysis

*   Method_Local_Static_Call_Regex_Match_None

    ```
    src/Core/src/Handlers/HybridWebView/HybridWebViewHandler.cs
        367
        389
    src/Compatibility/Core/src/Windows/LabelRenderer.cs        
        371
    src/Controls/src/Core/WebView/WebView.cs
        321
    ```

*   Method_Local_Static_Call_Regex_Match_Compiled

    ```
    src/Core/src/Platform/Windows/TextBlockExtensions.cs
        83
    ```

*   Method_Local_Object_Regex_Match_None

*   Method_Local_Object_Regex_Match_Compiled

*   Method_Local_Lazy_Object_Regex_Match_None

*   Method_Local_Lazy_Object_Regex_Match_Compiled

    ```
    src/Controls/src/Core.Design/ColorDesignTypeConverter.cs
        180
        189
    ```

*   Class_Member_Object_Regex_Match_None

*   Class_Member_Object_Regex_Match_Compiled

*   Class_Static_Member_Object_Regex_Match_None

    ```
    src/BlazorWebView/src/SharedSource/StaticContentHotReloadManager.cs
        20
    ```
*   Class_Static_Member_Object_Regex_Match_Compiled

    ```
    src/SingleProject/Resizetizer/src/Utils.cs
        12
    ```

*   Class_Static_Member_Object_Regex_Match_SourceCodeGenerated_Method


```shell
code -n \
src/Core/src/Handlers/HybridWebView/HybridWebViewHandler.cs \
src/Core/src/Platform/Windows/TextBlockExtensions.cs \
src/Controls/src/Core/WebView/WebView.cs \
src/Controls/src/Core.Design/ColorDesignTypeConverter.cs \
src/SingleProject/Resizetizer/src/Utils.cs \
src/BlazorWebView/src/SharedSource/StaticContentHotReloadManager.cs \
src/Compatibility/Core/src/Windows/LabelRenderer.cs \

```

Note: seems like source generator fails on Mac


```
code -n \
src/Core/src/Handlers/HybridWebView/HybridWebViewHandler.cs \
src/Core/src/Platform/Windows/TextBlockExtensions.cs \
src/Controls/src/Core/WebView/WebView.cs \
src/Controls/src/Core.Design/ColorDesignTypeConverter.cs \
src/SingleProject/Resizetizer/src/Utils.cs \
src/BlazorWebView/src/SharedSource/StaticContentHotReloadManager.cs \
src/Compatibility/Core/src/Windows/LabelRenderer.cs \
```

Higher priority (core):

```
src/SingleProject/Resizetizer/src/Utils.cs
    12
src/Controls/src/Core.Design/ColorDesignTypeConverter.cs
    180
    189
src/Core/src/Platform/Windows/TextBlockExtensions.cs
    83
src/BlazorWebView/src/SharedSource/StaticContentHotReloadManager.cs
    20
    87
src/Core/src/Handlers/HybridWebView/HybridWebViewHandler.cs
    367
    389
src/Compatibility/Core/src/Windows/LabelRenderer.cs
    370
src/Controls/src/Core/WebView/WebView.cs
    299
```

Lower priority:

```
src/Controls/samples/Controls.Sample/Extensions/GalleryBuilder.cs
    12
src/Compatibility/ControlGallery/src/Issues.Shared/Issue3262.cs
    139
src/Controls/src/Xaml/XamlLoader.cs
    369
src/TestUtils/src/Microsoft.Maui.IntegrationTests/Utilities/XHarness.cs
    37
src/Compatibility/ControlGallery/src/UITests.Shared/Utilities/AppExtensions.cs
    229
src/Controls/samples/Controls.Sample/Pages/Controls/GalleryBuilder.cs
    12
src/Compatibility/ControlGallery/src/Core/GalleryPages/GalleryBuilder.cs
    10
src/Compatibility/ControlGallery/src/Core/HanselForms/BlogPage.xaml.cs
    253
    257
    258
    299
src/Compatibility/ControlGallery/test/Xamarin.Forms.Core.macOS.UITests/MacOSApp.cs
    96
    99
    265
    266
    575
src/Controls/tests/TestCases.Shared.Tests/Tests/CollectionView/CollectionViewUITests.cs
    32
src/Controls/tests/Xaml.UnitTests/MSBuild/MSBuildTests.cs
    62
src/Controls/tests/TestCases.HostApp/TestBuilder.cs
    7
src/Compatibility/ControlGallery/test/WinUI.UITests/WinQuery.cs
    25
src/Controls/tests/TestCases.HostApp/Issues/Issue3262.cs
    131
    154
    209
eng/devices/ios.cake
    601
```


https://www.reddit.com/r/csharp/comments/yrkl90/generatedregex_in_static_class/?rdt=62675



```
    <DotNetWorkloadVersionRegex>\d+\.\d+\.\d+(-[a-z]+[\.\d+]+)?</DotNetWorkloadVersionRegex>
    <DotNetSdkVersionRegex>\d+\.\d+\.\d+(-[a-z]+\.\d+)?</DotNetSdkVersionRegex>
    <DotNetSdkMajorMinorVersionRegex>\d+\.\d+\.\d</DotNetSdkMajorMinorVersionRegex>
```


