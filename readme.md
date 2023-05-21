# HolisticWare.WebSite.Notes

Notes in markdown format:

*   content for HolisticWare website and personal blog before converting to html

*	https://github.com/moljac/HolisticWare.WebSite.Notes/tree/master/xamarin/products/xamarin-platform/traditional-standard/xamarin.android/meetings/A-n-O

## Fast Links

*	bindings 

	*	https://github.com/moljac/HolisticWare.WebSite.Notes/xamarin/products/xamarin-platform/traditional-standard/xamarin.android/advanced/bindings/

	*	improvements
	
		*	https://github.com/moljac/HolisticWare.WebSite.Notes/xamarin/products/xamarin-platform/traditional-standard/xamarin.android/advanced/bindings/improvements

*	`dotnet`

	*	tools

		*	https://github.com/moljac/HolisticWare.WebSite.Notes/dotnet-netfx/core/dotnet-tool/

	*	templates

		*	https://github.com/moljac/HolisticWare.WebSite.Notes/dotnet-netfx/core/dotnet-new-templates/

*	Nuget

	*	https://github.com/moljac/HolisticWare.WebSite.Notes/dotnet-netfx/nuget

*	MSBuild

## poslodavec

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

*	https://github.com/xamarin/xamarin-android/issues/5352

### Tools

```
dotnet script ./build/scripts/update-config.csx -- ./config.json update
```

```
rm -fr output externals generated && dotnet cake -t=clean && git clean -xdf && clean_term_screen_and_buffer && git pull
dotnet cake -t=ci && dotnet cake nuget-diff.cake && dotnet cake utilities.cake
```

```
dotnet cake utilities.cake -t=generate-markdown-publish-log
```

*	Android libraries

	```
	dotnet tool uninstall 	-g Cake.Tool
	dotnet tool install 	-g Cake.Tool	
	dotnet tool uninstall 	-g Xamarin.AndroidBinderator.Tool
	dotnet tool install 	-g Xamarin.AndroidBinderator.Tool	
	```
	
	*	build
	
	```
	git pull && git clean -xdf && rm -fr ~/.nuget/packages/
	dotnet cake -t=clean && dotnet cake -t=ci
	```

	*	AndroidX
		
		```
		dotnet tool uninstall 	-g Xamarin.AndroidX.Migration.Tool
		dotnet tool install 	-g Xamarin.AndroidX.Migration.Tool	
		```		
		
		*	https://developer.android.com/jetpack/androidx/versions
		
		*	stable
		
			*	https://developer.android.com/jetpack/androidx/versions/stable-channel
			
		*	all channels
		
			*	https://developer.android.com/jetpack/androidx/versions/all-channel
			
		*	https://github.com/androidx/androidx
		
		*	https://medium.com/androiddevelopers/introducing-jetpack-on-github-c2c9f12e62a9
		
		*	https://android-developers.googleblog.com/2020/07/11-weeks-of-android-jetpack.html

	*	GPS-FB
	
		*	https://developers.google.com/android/guides/releases

	*	https://maven.google.com/web/index.html

	*	https://search.maven.org/search?q

	*	https://mvnrepository.com/
	
	*	AndroidX
	
		*	https://androidx.tech/

		*	Releases by date:

			*	https://developer.android.com/jetpack/androidx/versions/all-channel

		*	Versions:

			*	https://developer.android.com/jetpack/androidx/versions

*	.NET utilities

    *.  https://sharplab.io/
    
    *	https://dotnetfiddle.net/
    
    *   http://packagesearch.azurewebsites.net/

    *   https://apisof.net/

    *	https://source.dot.net/

    *	netstandard (.NET Standard)

    	*    https://dotnet.microsoft.com/platform/dotnet-standard

    *	https://docs.microsoft.com/en-us/dotnet/api/

		*    https://www.fuget.org

		*	https://www.nuget.org
		
		*	https://nugettoolsdev.azurewebsites.net/
		
			*	https://github.com/joelverhagen/NuGetTools

		*	https://docs.microsoft.com/en-us/dotnet/standard/analyzers/portability-analyzer

### Xamarin

*   https://github.com/xamarin

    *   https://github.com/xamarin/XamarinComponents

    *	https://github.com/xamarin/Xamarin.Auth

    *   https://github.com/xamarin/AndroidX
	
		*	https://github.com/xamarin/XamarinAndroidXMigration
		
		*	https://developer.android.com/jetpack/androidx/versions
    
    *   https://github.com/xamarin/GooglePlayServicesComponents

		*	https://github.com/xamarin/GoogleApisForiOSComponents
	
    *   https://github.com/xamarin/AndroidSupportComponents
    
    	*	obsolete soon

		*	https://github.com/xamarin/AndroidSupportComponents/tree/AndroidX

			*	https://github.com/moljac/HolisticWare.WebSite.Notes/blob/master/xamarin/products/xamarin-platform/traditional-standard/xamarin.android/advanced/bindings/androidx/release-doc.md

	*	https://github.com/xamarin/monodroid-samples
	
		*	https://github.com/moljac/monodroid-samples
		
*	https://kdelmonte.github.io/json-to-markdown-table/

#### Xamarin.Forms

*	https://github.com/Samples-Playgrounds/Samples.Xamarin.Forms

*	https://github.com/moljac/HolisticWare.WebSite.Notes/blob/master/xamarin/products/xamarin-platform/xamarin.forms/samples.md

#### MAUI

*	https://github.com/Samples-Playgrounds/Samples.MAUI

*	https://github.com/moljac/HolisticWare.WebSite.Notes/blob/master/dotnet-netfx/dotnet/ui-user-interface/maui-multi-platform-app-ui/maui-samples.md

*	https://github.com/Cheesebaron/HackerNews-Maui

*	https://github.com/brminnick/HackerNews


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

	*	samples
	
		*	https://github.com/moljac/Samples.MachineLearning

*   bindings

    *   https://github.com/xamarin/XamarinComponents

    *   https://github.com/HolisticWare/HolisticWareComponents

    *	docs

	*	https://github.com/moljac/HolisticWare.WebSite.Notes/tree/master/xamarin/products/xamarin-platform/traditional-standard/xamarin.android/advanced/bindings

    	*	https://github.com/moljac/HolisticWare.WebSite.Notes/blob/master/xamarin/products/xamarin-platform/traditional-standard/xamarin.android/advanced/bindings/troubleshooting-log-analysis.md

*    https://holisticware-moljac.visualstudio.com/



## `git` copy-pasta

repo cloning:

```
export URL_GIT=https://github.com/xamarin/XamarinComponents.git
export BRANCH=xplat-ml.kit
export FOLDER=ML.Kit

git clone \
    --recursive \
    --branch $BRANCH \
    $URL_GIT \
    $FOLDER
```


repo submodules init/update:

```
git submodule update --init --recursive
git submodule update --recursive
git submodule update --recursive --remote
git pull --recurse-submodules 
git submodule foreach git pull origin master
```

submodule:

```
cd ./externals/Core.Math.Data/
git checkout master
git status
git add .
git commit -m "new data 202010"
git push
```

## MsBuild

### Structured binlog msbuildlog

*	https://live.msbuildlog.com/

*	https://msbuildlog.com/

### Extras fix

Needed after installations/updates of .NET core on MacOSX with case sensitive file sytstem:

```
export VERSION=3.1.401
sudo mv \
    /usr/local/share/dotnet/sdk/$VERSION/Sdks/Microsoft.NET.Sdk.WindowsDesktop/targets/Microsoft.WinFx.props \
    /usr/local/share/dotnet/sdk/$VERSION/Sdks/Microsoft.NET.Sdk.WindowsDesktop/targets/Microsoft.WinFX.props
```

https://github.com/novotnyllc/MSBuildSdkExtras/issues/224

 ## Building maintanined Xamarin repos

*  `AndroidX`

*  `Google.Play.Services-Firebase`

*	`Android.Support`,


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

### Coding

*   https://github.com/moljac

	*	https://github.com/moljac/moljac

*	https://moljac.github.io

	*	https://github.com/moljac/moljac.github.io

*	https://gitmemory.com/moljac

*   https://gitlab.com/moljac

*   https://github.com/moljac/HolisticWare.WebSite.Notes

### Installations

#### MacOSX

```
diskutil info -all | grep APFS
diskutil info /    | grep APFS
```

Steps:

1. Command+R

2. Reformat disk


Prerequisites:

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew install git
git clone --recursive \
	https://github.com/moljac/bat.git \
	~/bat
```

## Private

## Judo

*	https://judo.hr/new/1479

*	https://www.facebook.com/watch/?v=1191736417671810

*	https://www.facebook.com/crojudo/videos/1191736417671810/

### Wind

*	https://www.windy.com/?43.509,16.439,5

*	Sabunike

	*	https://www.windfinder.com/forecast/sabunike

	*	https://meteo.hr/prognoze.php?section=prognoze_model&param=ala_k&el=web_uv10_HRv8_

	*	https://meteo.hr/prognoze.php?section=prognoze_model&param=ala_k&el=web_uv10_MASL_

	*	https://www.windguru.cz/22206

	*	https://www.windy.com/44.250/15.180?43.800,15.180,8

*	Naxos

	*	https://www.windguru.cz/501253

	*	https://www.windy.com/station/ad-LGNX?37.081,25.370,8


