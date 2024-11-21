# `Regex`

regex.md


Note: seems like source generator fails on Mac


```
https://www.reddit.com/r/csharp/comments/yrkl90/generatedregex_in_static_class/?rdt=62675

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





```
    <DotNetWorkloadVersionRegex>\d+\.\d+\.\d+(-[a-z]+[\.\d+]+)?</DotNetWorkloadVersionRegex>
    <DotNetSdkVersionRegex>\d+\.\d+\.\d+(-[a-z]+\.\d+)?</DotNetSdkVersionRegex>
    <DotNetSdkMajorMinorVersionRegex>\d+\.\d+\.\d</DotNetSdkMajorMinorVersionRegex>
```


