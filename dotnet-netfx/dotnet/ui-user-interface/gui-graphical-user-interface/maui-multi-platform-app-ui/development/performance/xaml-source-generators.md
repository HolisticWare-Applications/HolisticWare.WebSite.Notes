# MAUI XAML Source Generators

xaml-source-generators.md

```xml
    <!-- 
    Enable XAML source generation for faster build times and improved performance.
    This generates C# code from XAML at compile time instead of runtime inflation.

    (force runtime inflation) 
    <MauiXaml Update="MyPage.xaml" Inflator="Runtime" />
    -->
    <MauiXamlInflator>SourceGen</MauiXamlInflator>

    <!--
    Enable XAML source generation for faster build times and improved performance.
    This generates C# code from XAML at compile time instead of runtime inflation.
    To disable, remove this line.
    For individual files, you can override by setting Inflator metadata:
    
    (reverts to defaults: Runtime for Debug, XamlC for Release)
    <MauiXaml Update="MyPage.xaml" Inflator="Default" /> 
    (force runtime inflation) 
    <MauiXaml Update="MyPage.xaml" Inflator="Runtime" /> 
    -->
    <MauiXamlInflator>SourceGen</MauiXamlInflator>
    <EmitCompilerGeneratedFiles>true</EmitCompilerGeneratedFiles>
    <CompilerGeneratedFilesOutputPath>$(BaseIntermediateOutputPath)Generated</CompilerGeneratedFilesOutputPath>
```
