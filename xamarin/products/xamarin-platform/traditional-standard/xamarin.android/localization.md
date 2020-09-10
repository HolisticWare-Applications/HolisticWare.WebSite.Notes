# Localization

localization.md

*   https://github.com/xamarin/java.interop/blob/master/src/Java.Interop.Localization/Resources.resx

*   https://github.com/xamarin/xamarin-android/commit/0342fe5698b86e21e36c924732ff135b9a87e4af#diff-ce29933c2cc628d98c4773e2fb9a854eR29


*   https://github.com/xamarin/xamarin-android/commit/0342fe5698b86e21e36c924732ff135b9a87e4af

*   https://github.com/dotnet/runtime/issues/34057

*   https://github.com/dotnet/runtime/blob/77b752b7cec435943668df438ab9cb33d5ece253/src/libraries/Common/src/System/SR.cs

*   https://github.com/dotnet/runtime/blob/77b752b7cec435943668df438ab9cb33d5ece253/src/libraries/Microsoft.Extensions.Configuration.CommandLine/src/Resources/Strings.resx

*   https://blog.mzikmund.com/2018/10/quick-tip-using-format-strings-with-string-interpolation-in-c/

## TODO

*   https://github.com/xamarin/xamarin-android-tools

```
git clone \
    --recursive \
    https://github.com/xamarin/xamarin-android-tools.git
```

*   https://github.com/xamarin/xamarin-android-tools/tree/master/src/Xamarin.Android.Tools.AndroidSdk

### Steps

process for a new repo as roughly:

1.  Decide where to put the .resx file in the repository based on which project in the repository 
    has resources that need to be localized.

2.  Add the XliffTasks NuGet package to that same project. This will require adding the dotnet-eng 
    NuGet package source to the NuGet.config for the repo.


3.  Update the .gitattributes file and add the XlfLanguages and UpdateXlfOnBuild properties. 
    (I'm not sure if all the xamarin-android dependency repos define a RunningOnCI  MSBuild property 
    when they are built outside of Xamarin.Android, so that might take a little bit of investigation 
    for new repos.)

    ```
    ./xamarin-android-tools/packages/xlifftasks/1.0.0-beta.20420.1/build/XliffTasks.targets(5,5): 
    Error: 'Properties/xlf/Resources.cs.xlf' for 'Properties/Resources.resx' does not exist. 
    Run `msbuild /t:UpdateXlf` to update .xlf files or set UpdateXlfOnBuild=true to update them on every 
    build, but note that it is strongly discouraged to set UpdateXlfOnBuild=true in official/CI build 
    environments as they should not modify source code during the build. 
    (Xamarin.Android.Tools.AndroidSdk)
    ````

4.  Move some strings into the .resx file in Visual Studio (so it generates Resources.Designer.cs)

5.  Build the project to generate the .xlf files.

6.  Be sure to include the .resx file, the Resources.Designer.cs file and the .xlf files when committing the change.

7.  For generating the Resources.Designer.cs file at step 4, the easiest way is to use Visual Studio on 
    Windows, but if you don't have that set up, you can probably copy and paste from the one in that 
    linked commit, and then edit it by hand.

    https://github.com/xamarin/xamarin-android/commit/0342fe5698b86e21e36c924732ff135b9a87e4af
    
### XLIF

*   https://github.com/dotnet/xliff-tasks

*   http://docs.oasis-open.org/xliff/v1.2/os/xliff-core.html

### Other

*   https://docs.microsoft.com/dotnet/framework/resources/index

*   https://docs.microsoft.com/dotnet/framework/resources/creating-resource-files-for-desktop-apps#resources-in-resx-files

*   http://docs.oasis-open.org/xliff/v1.2/os/xliff-core.html

*   https://github.com/dotnet/xliff-tasks

*   https://docs.microsoft.com/visualstudio/msbuild/how-to-use-project-sdk

*   https://github.com/dotnet/arcade/blob/e67d9f098029ebecedf11012a749b532d68ad2a9/Documentation/ArcadeSdk.md#generateresxsource-bool

*   https://docs.microsoft.com/azure/devops/pipelines/tasks/package/nuget

