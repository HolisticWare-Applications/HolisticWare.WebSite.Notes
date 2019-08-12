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






```
sh ./build.sh --target=samples
```