# Runtime issues

runtime-issues.md

try adding

```
    <ItemGroup>
        <AndroidLibrary Include="androidx.work.work-runtime-2.7.1.aar" Bind="false" />
    </ItemGroup>
```

this might help until the packages are released.



ObjectDisposedException: Object name:

and

problem was that the linker was removing certain classes that were important, in specific after

in Android Options and added under Linker properties, Skip linking assemblies, i added the following libraries "Xamarin.GooglePlayServices.Games;Xamarin.GooglePlayServices.Auth" without quotes.

    https://github.com/xamarin/GooglePlayServicesComponents/issues/643

