# Building repos with binderator

building-repos-with-binderator.md

repos:

*   AndroidX

    *   https://github.com/xamarin/AndroidX

    *   Android.Support (legacy)

        *   https://github.com/xamarin/AndroidSupportComponents

*   GooglePlayService-Firebase

    *   https://github.com/xamarin/GooglePlayServicesComponents

## Native artifacts

*   AndroidX

    *   https://developer.android.com/jetpack/androidx/versions
    
    *   https://developer.android.com/jetpack/androidx/versions/stable-channel

*   GooglePlayServices + Firebase = Google APIs

    *   https://developers.google.com/android/guides/releases


## Prerequisites

Some `dotnet tool`s are needed

1.  Cake

    ```
    dotnet tool uninstall   -g cake.tool
    dotnet tool install     -g cake.tool
    ````

2.  Binderator

    ```
    dotnet tool uninstall   -g xamarin.androidbinderator.tool 
    dotnet tool install     -g xamarin.androidbinderator.tool 
    ```

3.  ApiDiff

    ```
    dotnet tool uninstall   -g api-tools
    dotnet tool install     -g api-tools
    ```

    ```
    dotnet tool install --global api-tools --version 1.3.1
    ```

4.  Migration (AndroidX)

    ```
    dotnet tool uninstall   -g xamarin.androidx.migration.tool
    dotnet tool install     -g xamarin.androidx.migration.tool
    ```


To install (reinstall/upgrade) to newest (no versions):

```
dotnet tool uninstall   -g cake.tool
dotnet tool install     -g cake.tool

dotnet tool uninstall   -g xamarin.androidbinderator.tool 
dotnet tool install     -g xamarin.androidbinderator.tool 

dotnet tool uninstall   -g xamarin.androidx.migration.tool
dotnet tool install     -g xamarin.androidx.migration.tool


dotnet tool uninstall   -g xamarin.androidx.migration.tool
dotnet tool install     -g xamarin.androidx.migration.tool

dotnet tool uninstall   -g api-tools
dotnet tool install     -g api-tools
```

## Steps

1.  binderate

    1.  update `config.json` from https://maven.google.com/web/index.html

    2.  run `dotnet cake --target=binderate` 
    
        preferred after each addition or version bump to get dependencies

2.  libs

3.  nuget

4.  samples

5.  api-diff

### Step 1 - `binderate`

Run `binderate` target which generates solution and project structure:

```
dotnet cake -t=binderate
```

