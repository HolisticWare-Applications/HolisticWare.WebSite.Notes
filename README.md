# HolisticWare.WebSite.Notes

Notes in markdown format:

*   content for HolisticWare website and personal blog before converting to html


MSFT:

```
open -a Safari
```

HolisticWare:

```
open -a Firefox
```

## Tools

*	https://euangoddard.github.io/clipboard2markdown/

## Links References

### Tools

*	Android libraries

	*	https://developers.google.com/android/guides/releases

	*	https://maven.google.com/web/index.html

	*	https://search.maven.org/search?q

	*	https://mvnrepository.com/

*	.NET utilities

    *   http://packagesearch.azurewebsites.net/

    *   https://apisof.net/

    *	https://source.dot.net/

    *	netstandard (.NET Standard)

    	*	https://dotnet.microsoft.com/platform/dotnet-standard

    *	https://docs.microsoft.com/en-us/dotnet/api/

	*	https://www.fuget.org

	*	https://www.nuget.org

	*	https://docs.microsoft.com/en-us/dotnet/standard/analyzers/portability-analyzer

### Xamarin

*   https://github.com/xamarin

    *   https://github.com/xamarin/XamarinComponents

    *	https://github.com/xamarin/Xamarin.Auth

    *   https://github.com/xamarin/AndroidX
	
		*	https://github.com/xamarin/XamarinAndroidXMigration
    
    *   https://github.com/xamarin/GooglePlayServicesComponents

		*	https://github.com/xamarin/GoogleApisForiOSComponents
	
    *   https://github.com/xamarin/AndroidSupportComponents
    
    	*	obsolete soon

		*	https://github.com/xamarin/AndroidSupportComponents/tree/AndroidX

			*	https://github.com/moljac/HolisticWare.WebSite.Notes/blob/master/xamarin/products/xamarin-platform/traditional-standard/xamarin.android/advanced/bindings/androidx/release-doc.md


### HolisticWare

*   https://github.com/HolisticWare

    *   working projects 2018-12

	*   `Core`

		*	https://github.com/HolisticWare/HolisticWare.Core.Math.Statistics.Descriptive.Sequential

		*   https://github.com/HolisticWare/HolisticWare.Core.Linq

		*   https://github.com/HolisticWare/HolisticWare.Core.Text

	*	tools

		*	https://github.com/moljac/HolisticWare.Xamarin.Tools.Bindings.XamarinAndroid.AndroidX.Migraineator

		*	https://github.com/moljac/HolisticWare.Xamarin.Tools.Bindings.XamarinAndroid.ApiXmlSpitter.git

		*	https://github.com/moljac/HolisticWare.Xamarin.Tools.Bindings.XamarinAndroid.SampleProjectKreator

		*	https://github.com/moljac/HolisticWare.Xamarin.Tools.Bindings.XamarinAndroid.Decompilers


*   bindings

    *   https://github.com/xamarin/XamarinComponents

    *   https://github.com/HolisticWare/HolisticWareComponents

    *	docs

	*	https://github.com/moljac/HolisticWare.WebSite.Notes/tree/master/xamarin/products/xamarin-platform/traditional-standard/xamarin.android/advanced/bindings

    	*	https://github.com/moljac/HolisticWare.WebSite.Notes/blob/master/xamarin/products/xamarin-platform/traditional-standard/xamarin.android/advanced/bindings/troubleshooting-log-analysis.md

*    https://holisticware-moljac.visualstudio.com/


 ## Building maintanined Xamarin repos

*	`Android.Support`,

*  `AndroidX` and

*  `Google.Play.Services-Firebase`


MacOSX:


```
git clean -xdf \
&& \
dotnet cake --target=clean \
&& \
dotnet cake --target=binderate \
&& \
dotnet cake --target=libs \
&& \
dotnet cake --target=nuget \
&& \
dotnet cake --target=samples \
&& \
dotnet cake --target=diff \
```

```
git clean -xdf \
&& \
sh ./build.sh --target=clean \
&& \
sh ./build.sh --target=binderate \
&& \
sh ./build.sh --target=libs \
&& \
sh ./build.sh --target=nuget \
&& \
sh ./build.sh --target=samples \
&& \
sh ./build.sh --target=diff \

```


Windows:

```
git clean -xdf
dotnet cake --target=clean
dotnet cake --target=binderate
dotnet cake --target=libs
dotnet cake --target=nuget
dotnet cake --target=samples
dotnet cake --target=diff
```

```
git clean -xdf
.\build.ps1 --target=clean
.\build.ps1 --target=binderate
.\build.ps1 --target=libs
.\build.ps1 --target=nuget
.\build.ps1 --target=samples
.\build.ps1 --target=diff
```

## DevOps

*   Core

    *   https://dev.azure.com/holisticware-net/

    *   https://dev.azure.com/mcvjetko/

## Tools snippets

### `dotnet new` Templates

*	https://dotnetnew.azurewebsites.net/template/HolisticWare.DotNetNew.XamarinProjectsStructureTemplate.CSharp/HolisticWare.DotNetNew.XamarinProjectsStructureTemplate.CSharp


Usage:

```bash
dotnet new hw-structure -o       AwsomeLibrary
dotnet new hw-structure --output AwsomeLibrary

```

```bash
dotnet new hw-structure
```



```bash
dotnet new --install "HolisticWare.DotNetNew.XamarinProjectsStructureTemplate.CSharp"
```


### Nugets

https://www.nuget.org/packages?q=HolisticWare.Xamarin.Tools.Bindings.XamarinAndroid

```
<PackageReference Include="HolisticWare.Xamarin.Tools.Bindings.XamarinAndroid.ApiXmlSpitter" Version="0.0.1" />
```

```
<PackageReference Include="HolisticWare.Xamarin.Tools.Bindings.XamarinAndroid.Decompilers" Version="0.0.6" />
```

## Private

### Wind

*	https://www.windy.com/?43.509,16.439,5

*	Sabunike

	*	https://meteo.hr/prognoze.php?section=prognoze_model&param=ala_k&el=web_uv10_HRv8_

	*	https://meteo.hr/prognoze.php?section=prognoze_model&param=ala_k&el=web_uv10_MASL_

	*	https://www.windguru.cz/22206

	*	https://www.windy.com/44.250/15.180?43.800,15.180,8

*	Naxos

	*	https://www.windguru.cz/501253

	*	https://www.windy.com/station/ad-LGNX?37.081,25.370,8

### Coding

*   https://github.com/moljac

*	https://moljac.github.io

	*	https://github.com/moljac/moljac.github.io

*	https://gitmemory.com/moljac

*   https://gitlab.com/moljac

*   https://github.com/moljac/HolisticWare.WebSite.Notes


