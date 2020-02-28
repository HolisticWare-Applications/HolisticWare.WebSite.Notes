# `dotnet` tools for Xamarin.Android

dotnet-tools-for-xamarin-android.md

*   https://www.nuget.org/packages/Cake.Tool/

*   https://www.nuget.org/packages/Xamarin.AndroidBinderator.Tool/

*   https://www.nuget.org/packages/Xamarin.AndroidX.Migration.Tool


```
dotnet tool install -g cake.tool
dotnet tool install -g xamarin.androidbinderator.tool --version 0.4.2
dotnet tool install -g xamarin.androidx.migration.tool --version 1.0.0-rc1
dotnet tool install -g xamarin.androidx.migration.tool --version 1.0.0-preview06
```

```
dotnet tool install -g cake.tool
dotnet tool install -g xamarin.androidbinderator.tool
dotnet tool install -g xamarin.androidx.migration.tool
```

```
dotnet tool uninstall -g cake.tool
dotnet tool uninstall -g xamarin.androidbinderator.tool --version 0.4.1
dotnet tool uninstall -g xamarin.androidx.migration.tool
```


```
========================================
generate-mapping
========================================
Generating the androidx-mapping.csv file...
androidx-migrator: File does not exist: `C:\Users\moljac\.dotnet\tools\.store\xamarin.androidx.migration.tool\1.0.0-rc1\xamarin.androidx.migration.tool\1.0.0-rc1\tools\netcoreapp3.0\any\Tools/Mappings/override-mapping.csv`.
androidx-migrator: Use `androidx-migrator help generate` for details.
androidx-migrator: Use `androidx-migrator help generate` for details.
An error occurred when executing task 'generate-mapping'.
Error: One or more errors occurred. (Process androidx-migrator exited with code 1.)
        Process androidx-migrator exited with code 1.
```


```
Generating the androidx-assemblies.csv file...
An error occurred when executing task 'generate-mapping'.
Error: One or more errors occurred. (The specified key 'Support .NET assembly' does not exist in the ExpandoObject.)
        The specified key 'Support .NET assembly' does not exist in the ExpandoObject.
PS D:\X\AndroidX> dotnet tool uninstall -g xamarin.androidx.migration.tool
```
