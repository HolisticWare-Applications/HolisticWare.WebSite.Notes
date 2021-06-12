# Binderator

binderator.md

*   project location

    *   https://github.com/xamarin/XamarinComponents/tree/master/Util/Xamarin.AndroidBinderator

## Usage

Run binderator:

```
dotnet cake -t=binderate
```



## Old 

Sample build with clean-ed repo:

```
git clean -xfd
git pull
sh ./build.sh --target=clean \
&& \
export LOCAL_TEST_PKG=true \
&&  \
sh ./build.sh --target=binderate && sh ./build.sh --target=libs \
&& \
sh ./build.sh --target=nuget && sh ./build.sh --target=samples 
```

### Local builds

*   https://github.com/xamarin/GooglePlayServicesComponents/blob/master/source/GooglePlayServicesTargets.cshtml#L34-L37

*   


```
git clean -xfd
git pull
sh ./build.sh --target=clean 
export LOCAL_TEST_PKG=true \
    bash -c \
    ( \
        sh ./build.sh --target=binderate && sh ./build.sh --target=libs \
        && \
        sh ./build.sh --target=nuget && sh ./build.sh --target=samples \
    )
```


# Binderator

binderator.md

```
git clean -xdf \
&& \
sh ./build.sh --target=clean \
&& \
sh ./build.sh --target=binderate \
&& \
sh ./build.sh --target=libs \
&& sh ./build.sh --target=nuget \
&& \
cp ./output/*.nupkg ~/nuget-local/ \
```




Build samples (for ACW generation):

```
sh ./build.sh --target=samples
```

```
dotnet cake -t=binderate
```

```
git clean -xdf
xamarin-android-binderator --config="./config.json" --basepath="./"
```


```
dotnet cake -t=binderate && dotnet cake utilities.cake -t=dependencies
```