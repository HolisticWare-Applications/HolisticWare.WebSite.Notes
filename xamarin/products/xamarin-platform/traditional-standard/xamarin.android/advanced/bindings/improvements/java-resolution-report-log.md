# `java-resolution-report.log`

java-resolution-report-log.md



./obj/Release/net6.0-android/java-resolution-report.log

```
The method '[Method] kotlin.sequences.Sequence<java.lang.Double> asSequence(java.util.stream.DoubleStream obj)' was removed because the Java parameter type 'java.util.stream.DoubleStream' could not be found.
```

`java.util.stream.DoubleStream`

```
The method '[Method] void PermissionLifecycleCheckerEffect(com.google.accompanist.permissions.MutablePermissionState permissionState, androidx.lifecycle.Lifecycle.Event lifecycleEvent, androidx.compose.runtime.Composer $composer, int p3, int $changed)' was removed because the Java parameter type 'androidx.compose.runtime.Composer' could not be found.
```

'androidx.compose.runtime.Composer'


dotnet build generated/androidx.compose.runtime.runtime/androidx.compose.runtime.runtime.csproj 


## Source

*   https://github.com/xamarin/xamarin-android-private/blob/5432886562044dbcab0fba9f5dca4b1658daa513/src/Xamarin.Android.Build.Tasks/MSBuild/Xamarin/Android/Xamarin.Android.Bindings.ClassParse.targets#L54

https://github.com/xamarin/java.interop/blob/main/tools/generator/Java.Interop.Tools.Generator.Transformation/JavaTypeResolutionFixups.cs


```csharp
    // The first cycle is more interesting to the user, as it is mainly external Java types
    // that could not be resolved, which often point to a missing reference jar or NuGet.
    // Thus, we're going to output these as warnings.
    var missing_types = first_cycle.Unresolvables.Select (u => u.MissingType).Distinct ().OrderBy (t => t);

    foreach (var type in missing_types)
        Report.LogCodedWarning (0, Report.WarningJavaTypeNotResolved, source, type);

    // The remaining cycles are generally just user types that are being removed because
    // other user types have been removed. Since the root cause is actually the missing external
    // types above, these aren't as important. We'll write them to a diagnostic file
    // for the user to inspect for details if they want.

```

https://github.com/xamarin/java.interop/blob/main/src/Java.Interop.Tools.JavaTypeSystem/Utilities/JavaUnresolvableModel.cs#L5

```
```