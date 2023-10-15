# Linking Timming

linking-trimming.md

*   https://github.com/dotnet/maui/issues/17265


```
dotnet build \
    -f net8.0-android \
    -v:diag \
    -p:Configuration=Release \
    -p:_ExtraTrimmerArgs=--verbose \
    > \
    build.txt
```


```
dotnet tool install --global dotnet-ilverify
# creates $HOME/.dotnet/tools/ilverify

cd obj/Release/net8.0-android/android-arm/linked

for f in *.dll ; do \
    echo "## $f"; \
    $HOME/.dotnet/tools/ilverify $f \
        --tokens \
        --system-module System.Private.CoreLib $(ls -1 *.dll | grep -v $f | sed -E 's/^/-r /g') ; \
done \
    > \
    ilverify-errors.txt
```