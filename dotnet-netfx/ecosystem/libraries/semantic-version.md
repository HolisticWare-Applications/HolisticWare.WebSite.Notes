# SemanticVersion

semantic-version.md

*   https://docs.microsoft.com/en-us/dotnet/csharp/versioning

*   https://docs.microsoft.com/en-us/dotnet/api/system.management.automation.semanticversion?view=powershellsdk-7.0.0

*   https://www.nuget.org/packages/SemanticVersion/

*   https://github.com/maxhauser/semver

*   https://gist.github.com/yadyn/959467

*   https://stackoverflow.com/questions/24769091/is-there-a-nuget-package-that-contains-a-semantic-version-parser-in-net

*   https://docs.microsoft.com/en-us/dotnet/api/system.version?redirectedfrom=MSDN&view=netcore-3.1

*   https://github.com/NuGetArchive/NuGet.Versioning/blob/master/src/NuGet.Versioning/SemanticVersion.cs#L10

System.Version handles pre-release suffixes. –

*   Class

    *   System.Version 

    *   Namespace:      System

    *   Assembly:       System.Runtime.dll

*   https://codeblog.jonskeet.uk/2019/06/30/versioning-limitations-in-net/

*   https://medium.com/@michael.wolfenden/simplified-versioning-and-publishing-for-net-libraries-a28e5e740fa6

*   https://devhints.io/semver

*   https://semver.org/

*   https://regex101.com/r/Ly7O1x/3/

```
^(?P<major>0|[1-9]\d*)\.(?P<minor>0|[1-9]\d*)\.(?P<patch>0|[1-9]\d*)(?:-(?P<prerelease>(?:0|[1-9]\d*|\d*[a-zA-Z-][0-9a-zA-Z-]*)(?:\.(?:0|[1-9]\d*|\d*[a-zA-Z-][0-9a-zA-Z-]*))*))?(?:\+(?P<buildmetadata>[0-9a-zA-Z-]+(?:\.[0-9a-zA-Z-]+)*))?$
```
And one with numbered capture groups instead (so cg1 = major, cg2 = minor, cg3 = patch, cg4 = prerelease and cg5 = buildmetadata) 
that is compatible with ECMA Script (JavaScript), PCRE (Perl Compatible Regular Expressions, i.e. Perl, PHP and R), Python and Go.

*   https://regex101.com/r/vkijKf/1/

```
^(0|[1-9]\d*)\.(0|[1-9]\d*)\.(0|[1-9]\d*)(?:-((?:0|[1-9]\d*|\d*[a-zA-Z-][0-9a-zA-Z-]*)(?:\.(?:0|[1-9]\d*|\d*[a-zA-Z-][0-9a-zA-Z-]*))*))?(?:\+([0-9a-zA-Z-]+(?:\.[0-9a-zA-Z-]+)*))?$
```

*   https://www.geeksforgeeks.org/introduction-semantic-versioning/

*   https://devopedia.org/semantic-versioning

*   https://en.wikipedia.org/wiki/Software_versioning


