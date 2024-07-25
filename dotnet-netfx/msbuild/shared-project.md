# Shared Project

shared-project.md


# Projitems

*   https://github.com/sharpjs/Subatomix.Build.Packaging.PowerShellModule/blob/master/.root.targets

*   https://github.com/dotnet/sdk/issues/2511

*   https://developercommunity.visualstudio.com/t/overriding-globs/87038

*   https://stackoverflow.com/questions/70419444/include-all-folder-files-in-a-shared-project

*   https://youtrack.jetbrains.com/issue/RIDER-95675

    *   https://learn.microsoft.com/en-us/dotnet/core/project-sdk/overview

    *   https://dfederm.com/authoring-msbuild-project-sdks/

    *   https://github.com/microsoft/MSBuildSdks/blob/main/src/NoTargets/README.md


Rider:


```
0>Microsoft.NET.Sdk.DefaultItems.Shared.targets(190,5): Error NETSDK1022 : Duplicate 'Compile' items were included. The .NET SDK includes 'Compile' items from your project directory by default. You can either remove these items from your project file, or set the 'EnableDefaultCompileItems' property to 'false' if you want to explicitly include them in your project file. For more information, see https://aka.ms/sdkimplicititems. The duplicate items were: './LibrarySource/LibrarySource.SharedProject/Class3.cs'
0>------- Finished building project: UnitTests.MSTest. Succeeded: False. Errors: 1. Warnings: 0
1>Microsoft.NET.Sdk.DefaultItems.Shared.targets(190,5): Error NETSDK1022 : Duplicate 'Compile' items were included. The .NET SDK includes 'Compile' items from your project directory by default. You can either remove these items from your project file, or set the 'EnableDefaultCompileItems' property to 'false' if you want to explicitly include them in your project file. For more information, see https://aka.ms/sdkimplicititems. The duplicate items were: './LibrarySource/LibrarySource.SharedProject/Class3.cs'
1>------- Finished building project: UnitTests.XUnit. Succeeded: False. Errors: 1. Warnings: 0
2>Microsoft.NET.Sdk.DefaultItems.Shared.targets(190,5): Error NETSDK1022 : Duplicate 'Compile' items were included. The .NET SDK includes 'Compile' items from your project directory by default. You can either remove these items from your project file, or set the 'EnableDefaultCompileItems' property to 'false' if you want to explicitly include them in your project file. For more information, see https://aka.ms/sdkimplicititems. The duplicate items were: './LibrarySource/LibrarySource.SharedProject/Class3.cs'
2>------- Finished building project: UnitTests.NUnit. Succeeded: False. Errors: 1. Warnings: 0
```
