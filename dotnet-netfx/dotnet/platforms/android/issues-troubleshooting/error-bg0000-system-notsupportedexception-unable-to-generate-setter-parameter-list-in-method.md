# `error BG0000: System.NotSupportedException: Unable to generate setter parameter list in method`

error-bg0000-system-notsupportedexception-unable-to-generate-setter-parameter-list-in-method.md

```
error BG0000: System.NotSupportedException: Unable to generate setter parameter list in method AddDataSet in managed type Java.Interop.JavaInt16Array
    at MonoDroid.Generation.Field.Validate(CodeGenerationOptions opt, GenericParameterDefinitionList type_params, CodeGeneratorContext context) in /Users/runner/work/1/s/xamarin-android/external/Java.Interop/tools/generator/Java.Interop.Tools.Generator.ObjectModel/Field.cs:line 62
    at MonoDroid.Generation.GenBase.OnValidate(CodeGenerationOptions opt, GenericParameterDefinitionList type_params, CodeGeneratorContext context) in /Users/runner/work/1/s/xamarin-android/external/Java.Interop/tools/generator/Java.Interop.Tools.Generator.ObjectModel/GenBase.cs:line 724
    at MonoDroid.Generation.ClassGen.OnValidate(CodeGenerationOptions opt, GenericParameterDefinitionList type_params, CodeGeneratorContext context) in /Users/runner/work/1/s/xamarin-android/external/Java.Interop/tools/generator/Java.Interop.Tools.Generator.ObjectModel/ClassGen.cs:line 335
    at MonoDroid.Generation.GenBase.Validate(CodeGenerationOptions opt, GenericParameterDefinitionList type_params, CodeGeneratorContext context) in /Users/runner/work/1/s/xamarin-android/external/Java.Interop/tools/generator/Java.Interop.Tools.Generator.ObjectModel/GenBase.cs:line 928
    at MonoDroid.Generation.Parameter.Validate(CodeGenerationOptions opt, GenericParameterDefinitionList type_params, CodeGeneratorContext context) in /Users/runner/work/1/s/xamarin-android/external/Java.Interop/tools/generator/Java.Interop.Tools.Generator.ObjectModel/Parameter.cs:line 285
```

## [Re]Solution / Workaround

remove package `Microsoft.CodeAnalysis.NetAnalyzers`

someone else report that and the issue was that their workloads were out of date or something or maybe they just needed 
to clean and rebuild

https://discord.com/channels/732297728826277939/732297837953679412/1293239467104272434

https://discord.com/channels/732297728826277939/732297837953679412/1300975891140313149

