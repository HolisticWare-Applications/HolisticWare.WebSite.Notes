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

*   Faster Apps with XAML Source Generation in .NET MAUI

    *   https://www.youtube.com/watch?v=3APIPxqpzTc

*   Boost .NET MAUI Performance with XAML Source-Generation

    *   https://www.youtube.com/watch?v=I9X8McUF9pQ&t=2s

```xml
<MauiXamlInflator>SourceGen</MauiXamlInflator>
```

*   https://github.com/jfversluis/MauiXamlSourceGenDemo

    *   https://github.com/jfversluis/MauiXamlSourceGenDemo/blob/main/MauiXamlSourceGenDemo/MauiXamlSourceGenDemo.csproj

    ```xml
		<!-- XAML Source Generation -->
		<MauiXamlInflator>SourceGen</MauiXamlInflator>
		<!--
        <EmitCompilerGeneratedFiles>true</EmitCompilerGeneratedFiles>
		<CompilerGeneratedFilesOutputPath>C:\x</CompilerGeneratedFilesOutputPath>
        -->    
    ```