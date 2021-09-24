# `dotnet tool` Samples

dotnet-tool-samples.md

## Binderator

*   https://www.nuget.org/packages/Xamarin.AndroidBinderator.Tool/

*   https://github.com/xamarin/XamarinComponents/tree/master/Util/Xamarin.AndroidBinderator

```bash
dotnet tool uninstall   --global Xamarin.AndroidBinderator.Tool
dotnet tool install     --global Xamarin.AndroidBinderator.Tool
```

```bash
 dotnet tool \                      
    uninstall --global \
    xamarin.androidbinderator.tool

dotnet tool \
    install --global \
    --add-source ./output/ \
    --version 0.4.4-alpha01 \
    xamarin.androidbinderator.tool
```



## Migration Tool

*   https://www.nuget.org/packages/Xamarin.AndroidX.Migration.Tool

*   https://github.com/xamarin/AndroidX

```bash
dotnet tool uninstall   --global Xamarin.AndroidX.Migration.Tool
dotnet tool install     --global Xamarin.AndroidX.Migration.Tool
```

## Cake Tool

*   https://www.nuget.org/packages/Cake.Tool/

*   https://github.com/cake-build/cake

*   https://github.com/cake-build/cake/blob/main/src/Cake/Cake.csproj#L10-L20

```bash
dotnet tool uninstall --global \
    Cake.Tool 
dotnet tool install --global \
    Cake.Tool 
```

```bash
dotnet tool uninstall --global \
    Cake.Tool 
dotnet tool install --global \
    Cake.Tool \
    --version 0.38.5
```

## `boots`

*   https://www.nuget.org/packages/boots/

*   https://github.com/jonathanpeppers/boots

```bash
dotnet tool uninstall   --global boots
dotnet tool install     --global boots
```

## MAUI check

```bash
dotnet tool uninstall -g Redth.Net.Maui.Check
dotnet tool   install -g Redth.Net.Maui.Check
```

```bash
maui-check
```


```bash
dotnet tool uninstall   --global boots
dotnet tool install     --global boots
```

## `dotnet try-convert`

*   https://github.com/dotnet/try-convert

```bash
>>>>>>> Stashed changes
dotnet tool uninstall   -g try-convert
dotnet tool install     -g try-convert
```

Then restart the terminal and check if it was installed correctly with:

```bash
dotnet tool list -g 
```

Which lists all the tools and tells user what command to use. 

The help for try-convert is pretty useful, so user can get it with:

```bash
try-convert --help
```

*   https://docs.microsoft.com/en-us/dotnet/core/porting/tools

*   https://medium.com/c-sharp-progarmming/migrate-net-framework-to-net-core-66746acb4092

*   https://channel9.msdn.com/Events/dotnetConf/NET-Conf-2019/B104

*   https://github.com/BornToBeRoot/NETworkManager


## Android SDK

*   https://github.com/redth/androidsdk.tools


## Diverse

```bash
dotnet tool
```

```bash
dotnet tool uninstall   --global Microsoft.dotnet-interactive
dotnet tool install     --global Microsoft.dotnet-interactive
```

    https://github.com/dotnet/interactive/blob/main/src/dotnet-interactive/dotnet-interactive.csproj

    https://github.com/danielpalme/ReportGenerator/blob/master/src/ReportGenerator.DotnetGlobalTool/ReportGenerator.DotnetGlobalTool.csproj

    https://github.com/dotnet/format/blob/main/src/dotnet-format.csproj


```bash
dotnet tool uninstall   --global dotnet-trace 
dotnet tool install     --global dotnet-trace 
```

    https://github.com/dotnet/diagnostics/blob/main/src/Tools/dotnet-trace/dotnet-trace.csproj

```bash
dotnet tool uninstall   --global dotnet-counters
dotnet tool install     --global dotnet-counters
```

    https://github.com/dotnet/diagnostics/blob/main/src/Tools/dotnet-counters/dotnet-counters.csproj

```bash
dotnet tool uninstall   --global dotnet-dump
dotnet tool install     --global dotnet-dump
```

    https://github.com/dotnet/diagnostics/blob/main/src/Tools/dotnet-dump/dotnet-dump.csproj

```bash
dotnet tool uninstall   --global dotnet-gcdump
dotnet tool install     --global dotnet-gcdump
```

    https://github.com/dotnet/diagnostics/blob/main/src/Tools/dotnet-gcdump/dotnet-gcdump.csproj

```bash
dotnet tool uninstall   --global dotnet-script
dotnet tool install     --global dotnet-script
```

    https://github.com/filipw/dotnet-script/blob/master/src/Dotnet.Script/Dotnet.Script.csproj

```bash
dotnet tool uninstall   --global dotnet-xdt
dotnet tool install     --global dotnet-xdt
```

    https://github.com/nil4/dotnet-transform-xdt/blob/master/dotnet-xdt/dotnet-xdt.csproj

```bash
dotnet tool uninstall   --global dotnet-ildasm
dotnet tool install     --global dotnet-ildasm
```
    https://github.com/pjbgf/dotnet-ildasm/blob/master/src/dotnet-ildasm/dotnet-ildasm.csproj

    https://github.com/pjbgf/dotnet-ildasm/blob/master/src/dotnet-ildasm/dotnet-ildasm2.csproj

Install-Package DotNet.Build.Sign -Version 2.1.0-preview.3.0.20061.2

```bash
dotnet tool uninstall   --global dotnet-outdated-tool
dotnet tool install     --global dotnet-outdated-tool
```

    https://github.com/dotnet-outdated/dotnet-outdated/blob/master/src/DotNetOutdated/DotNetOutdated.csproj

```bash
dotnet tool uninstall   --global dotnet-zip --version
dotnet tool install     --global dotnet-zip --version
```

    https://github.com/qmfrederik/dotnet-packaging/blob/master/dotnet-zip/dotnet-zip.csproj

```bash
dotnet tool uninstall   --global dotnet-deb
dotnet tool install     --global dotnet-deb
```

    https://github.com/qmfrederik/dotnet-packaging/blob/master/dotnet-deb/dotnet-deb.csproj


    https://github.com/grpc/grpc-dotnet/blob/master/src/dotnet-grpc/dotnet-grpc.csproj


    https://github.com/jonathanpeppers/boots/blob/main/Boots/Boots.csproj

    https://github.com/jonathanpeppers/boots

    https://github.com/Redth/dotnet-maui-check/blob/main/MauiCheck/MauiCheck.csproj



*   https://github.com/natemcmaster/dotnet-tools

*   https://www.nuget.org/packages?page=5&q=dotnet%20tool&sortBy=relevance


```zsh
export TOOLZ=\
"
boots
cake.tool
xamarin.androidbinderator.tool
xamarin.androidx.migration.tool
api-tools
dotnet-ildasm
assembly-differ
Redth.Net.Maui.Check
try-convert
dotnet-grpc
dotnet-zip
dotnet-deb
dotnet-rpm
dotnet-tarball
dotnet-outdated-tool
dotnet-xdt
dotnet-xscgen
dotnet-version-cli
dotnet-watch
dotnet-t4
dotnet-mono
dotnet-references
dotnet-delice
dotnet-script
dotnet-trace
dotnet-counters
dotnet-dump
dotnet-gcdump
Microsoft.dotnet-interactive
dotnet-retire
microsoft.tye 
wyam.tool
dotnet-project-licenses
dotnet-vs
Microsoft.dotnet-httprepl
Microsoft.dotnet-openapi
dotnet-ignore
dotnet-cleanup
dotnet-serve
dotnet-depends
dotnet-obfuscar
coverlet.console
BenchmarkDotNet.Tool
CSharpSyntaxValidator
Korzh.DbTool
depguard
dotnet-args
dotnet-aspnet-codegenerator
dotnet-combine
dotnet-config
dotnet-config2json
dotnet-coverageconverter
dotnet-depends
dotnet-file
dotnet-giio
dotnet-grab
dotnet-namechk
dotnet-nuget-gc
Obfuscar.GlobalTool
dotnet-outdated-tool
dotnet-retire
dotnet-script
DotNetSdkHelpers
dotnet-search
dotnet-serve
DotNetSimpleServer
dotnet-sonarscanner
dotnet-sort-refs
dotnet-sshdeploy
dotnet-try
dotnet-updatealltools
dotnet-warp
dotnet-wiremock
dotnet-xdt
ib
ilspycmd
InstallSdkGlobalTool
json2yaml
LiveReloadServer
ndjson
protobuf-net.Protogen
PowerShell
dotnet-rider-cli
Snitch
Elemental.SysInfoTool
dotnet-t4
todo
dotnet-xscgen
xunit-cli
upgrade-assistant

"

# IFS=$'\n'
# ZSH does not split words by default (like other shells):
setopt sh_word_split

for TOOL in $TOOLZ
do
    echo Tool: $TOOL
    dotnet tool uninstall   --global  $TOOL
    dotnet tool install     --global  $TOOL
done


dotnet tool list --global
```



*   https://www.nuget.org/packages?packagetype=dotnettool


*   https://github.com/devlooped/dotnet-evergreen/blob/main/src/dotnet-evergreen/Program.cs

*   https://github.com/devlooped/dotnet-tor/blob/main/src/dotnet-tor/Program.cs

*   https://github.com/kzu/dotnet-echo/blob/main/src/dotnet-echo/Program.cs

*   https://github.com/augustoproiete/dotnet-args/blob/master/src/DotNet.Args/DotNet.Args.csproj

*   https://github.com/jonathanpeppers/boots/blob/main/Boots/Program.cs

https://github.com/mono/t4/blob/main/dotnet-t4-project-tool/dotnet-t4-project-tool.csproj




## PackAsTool

```
    <PackAsTool>true</PackAsTool>
```


## ToolCommandName

```
    <ToolCommandName>csmin</ToolCommandName>
```
