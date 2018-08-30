# Build system

Completely new build system with

*   project files (SDK style) generated from templates

*   custom MSBuild tasks and targets


```
sh ./build.sh --verbosity=diagnostic --target=clean \
&&
sh ./build.sh --verbosity=diagnostic --target=binderate \
&& \
nuget restore ./generated/AndroidSupport.sln \
&&
sh ./build.sh --verbosity=diagnostic --target=libs \
&&
sh ./build.sh --verbosity=diagnostic --target=merge \
&&
sh ./build.sh --verbosity=diagnostic --target=diff \
```


```
sh ./build.sh --verbosity=diagnostic --target=clean \
&& \
sh ./build.sh --verbosity=diagnostic --target=ci \
```