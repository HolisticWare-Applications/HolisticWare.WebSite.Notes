# dotnet tool

dotnet-tool.md 


```
dotnet tool install -g Xamarin.AndroidBinderator.Tool
xamarin-android-binderator --config="C:\xamarin\Gps\config.json" --basepath="C:\xamarin\Gps\"
```

```
dotnet tool install --global NuKeeper

dotnet tool install --global dotnet-outdated
```


nuget diff tool a dotnet tool, so it can be run from the command line

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
