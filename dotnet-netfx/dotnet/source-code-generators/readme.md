# Source Code Generators

readme.md

*   https://github.com/amis92/csharp-source-generators


```xml
<EmitCompilerGeneratedFiles>true</EmitCompilerGeneratedFiles>
```

```xml
<PropertyGroup>
    <EmitCompilerGeneratedFiles>true</EmitCompilerGeneratedFiles>
    <CompilerGeneratedFilesOutputPath>Generated</CompilerGeneratedFilesOutputPath>
</PropertyGroup>

<ItemGroup>
    <!-- Exclude the output of source generators from the compilation -->
    <Compile Remove="$(CompilerGeneratedFilesOutputPath)/**/*.cs" />
</ItemGroup>
```

*   https://www.reddit.com/r/csharp/comments/1m0byke/i_created_a_c_source_generator_that_automatically/

*   https://andrewlock.net/creating-a-source-generator-part-6-saving-source-generator-output-in-source-control/


## Samples

*   https://www.nuget.org/packages/NotNot.AppSettings

    *   https://github.com/NotNotTech/NotNot-MonoRepo/tree/master/src/nuget/NotNot.AppSettings/

*   https://github.com/beheshty/SetSharp

*   https://www.reddit.com/r/csharp/comments/19067b7/notnotappsettings_autogen_stronglytyped_settings/

*   https://www.meziantou.net/strongly-typed-ids-with-csharp-source-generators.htm

*   https://learn.microsoft.com/en-us/dotnet/core/extensions/options-validation-generator

*   https://andrewlock.net/exploring-the-dotnet-8-preview-using-the-new-configuration-binder-source-generator/

*   https://albertromkes.com/2020/11/04/a-source-generator-for-your-appsettings-json/

## Diverse 

*   https://www.reddit.com/r/csharp/comments/19067b7/notnotappsettings_autogen_stronglytyped_settings/

*   https://andrewlock.net/exploring-the-dotnet-8-preview-using-the-new-configuration-binder-source-generator/

*   https://albertromkes.com/2020/11/04/a-source-generator-for-your-appsettings-json/

*   https://stackoverflow.com/questions/46940710/getting-value-from-appsettings-json-in-net-core