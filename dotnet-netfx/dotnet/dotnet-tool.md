# dotnet tool

dotnet-tool.md 

## dotnet global tools

*   https://dasmulli.blog/2018/01/23/exploring-global-net-core-tools/

*   https://github.com/dasMulli/GlobalCliToolsExample


```
dotnet tool install -g Xamarin.AndroidBinderator.Tool
xamarin-android-binderator --config="C:\xamarin\Gps\config.json" --basepath="C:\xamarin\Gps\"
```

```
dotnet tool install --global NuKeeper

dotnet tool install --global dotnet-outdated
```

*   https://github.com/natemcmaster/dotnet-tools


*   nuget diff tool a dotnet tool, so it can be run from the command line

Like downloading externals and unzipping is pretty trivial in msbuild

yeah, especially with the new components stuff:
https://github.com/xamarin/XamarinComponents/blob/dev/tf-lite/XPlat/TensorFlow.Lite/build.cake
it is download, msbuild, done

and, if you need to get down and dirty, msbuild can make use of .net in the build properties - 
such as reading the contents of a file or something
and, if we need to do something complex, we can just create a dotnet tool
eg: nuget diff

Diff, maybe some Xcode stuff
A dotnet tool could in theory use cake in it too I think
Thing is cake provides a nice DSL for doing some things
Handling filepaths and whatnot
I’m not convinced we should abandon cake fully but what we should see is how to get our cake 
adding and such to fully adopt netstandard so at least we can run the cake global tool and 
maybe see how dotnet tools can be invoked from cake
This might provide a nice transition

## Releaser

https://github.com/xoofx/dotnet-releaser

## Cake

```
dotnet tool install Cake.Tool -g
```

```
dotnet tool install --global Cake.Tool --version 0.34.1
```

```
dotnet tool install -g Cake.Tool
```

 and run 
 
```
dotnet cake --target=ci --verbosity=$(VERBOSITY)
```

## Binderator

```
dotnet tool install -g Xamarin.AndroidBinderator.Tool
```

```
xamarin-android-binderator --config="C:\xamarin\Gps\config.json" --basepath="C:\xamarin\Gps\"
```

```
dotnet tool install -g Xamarin.AndroidBinderator.Tool
```

```
xamarin-android-binderator \
    --config="C:\xamarin\Gps\config.json" \
    --basepath="C:\xamarin\Gps\"
```

## AndroidX

```
dotnet tool install -g xamarin.androidx.migration.tool --add-source
```

## Links / References

*   https://github.com/natemcmaster/dotnet-tools



```
export TOOLS=\
"
Cake.Tool
xamarin.androidx.migration.tool
Xamarin.AndroidBinderator.Tool
api-tools

"

for TOOL in $TOOLS;
do
    dotnet tool install --global $TOOL
done

```

## Content files

*   https://github.com/dotnet/sdk/issues/9730

*   https://github.com/dotnet/sdk/issues/8677

*   https://blog.ladeak.net/posts/grpc-proxy2

```
.dotnet/tools/.store/xunit-cli/0.1.16/xunit-cli/0.1.16/tools/net6.0/any 
```