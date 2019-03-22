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


*   https://github.com/moljac

*   https://gitlab.com/moljac

*   https://github.com/moljac/HolisticWare.WebSite.Notes

*   https://github.com/xamarin

    *   https://github.com/xamarin/XamarinComponents

    *	https://github.com/xamarin/Xamarin.Auth

    *   https://github.com/xamarin/AndroidSupportComponents

        *    https://github.com/xamarin/AndroidSupportComponents/tree/AndroidX
	
		*	https://github.com/xamarin/XamarinAndroidXMigration

    *   https://github.com/xamarin/GooglePlayServicesComponents

	*    https://github.com/xamarin/GooglePlayServicesComponents/tree/15.0.1-binderate

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
    
    

*    https://holisticware-moljac.visualstudio.com/

* .  usefull links

    *   http://packagesearch.azurewebsites.net/
    
    *   https://apisof.net/
    
    *	https://docs.microsoft.com/en-us/dotnet/api/
    
    
 ## Building `Android.Support`, `AndroidX` and `Google.Play.Services-Firebase`

```
sh ./build.sh --target=clean \
&& \
sh ./build.sh --target=binderate \
&& \
sh ./build.sh --target=libs \
&& \
sh ./build.sh --target=nuget \
&& \
sh ./build.sh --target=diff \
&& \
sh ./build.sh --target=samples \

```

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
```
    <PackageReference Include="HolisticWare.Xamarin.Tools.Bindings.XamarinAndroid.Decompilers" Version="0.0.6" />
```
