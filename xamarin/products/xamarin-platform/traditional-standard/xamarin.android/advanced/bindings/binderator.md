# Binderator

binderator.md

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

## Local builds

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
