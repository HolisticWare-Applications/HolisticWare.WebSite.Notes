# Microsoft.Bcl.Build

microsoft.bcl.build.md

Any ideas for solution for this one:

```
~/.nuget/packages/microsoft.bcl.build/1.0.21/build/Microsoft.Bcl.Build.targets(5,5): 
Error: 
Could not locate 
    ./OAuthNativeFlow/packages.config.  
Ensure that this project has Microsoft.Bcl.Build installed and packages.config is located next to the project file.
```

Matt Ward [10:10]
There are a few problems with Microsoft.Bcl.Build. Does your project have a packages.config file?

Miljenko Cvjetko 🇭🇷 [10:10]
Nope
PackageReferences
It is not my project, but from users
Tried to search but lost too much time and no real solution

Matt Ward [10:11]
Then I think you are stuck. There is no real solution apart from - not using Microsoft.Bcl.Build, or getting Microsoft.Bcl.Build fixed by whoever owns it.

Miljenko Cvjetko 🇭🇷 [10:13]
User is testing new Xamarin.Auth .NET support with Xamarin.Forms based on .NETStandard…
So NO-GO

With a PackageReference the Microsoft.Bcl.Build.targets file will be imported by a projectname.csproj.nuget.g.targets file in the obj directory. So you cannot remove any import from your own .csproj.
My only thought is maybe to try one of the other elements you can attach to the PackageReference - ExcludeAssets: build. https://docs.microsoft.com/en-us/nuget/consume-packages/package-references-in-project-files (edited)
But that may not work if you are not explicitly depending on that package.

Miljenko Cvjetko 🇭🇷 [10:22]
OK. Will experiment with that.
I will ping you with results.
OK?


```
Warning: All projects referencing SomeName.csproj must install nuget package Microsoft.Bcl.Build. 
For more information, see http://go.microsoft.com/fwlink/?LinkID=317569.
```
That's another problem with Microsoft.Bcl.Build. Sometimes you get that warning when all 
your projects do use it. I think there is an MSBuild property you can set in the project 
to ignore that warning - but whether you should ignore it or not is another question


I would guess that maybe Microsoft.Bcl.Build is not needed for .NET Standard. The NuGet package 
has not been touched for 4 years.


