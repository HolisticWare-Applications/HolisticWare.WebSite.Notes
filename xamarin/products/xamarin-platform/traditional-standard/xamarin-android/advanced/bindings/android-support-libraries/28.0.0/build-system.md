# Build system

Completely new build system with

*   project files (SDK style) generated from templates

*   custom MSBuild tasks and targets


```
# mono ./tools/nuget.exe restore ./generated/AndroidSupport.sln \

#export VERBOSITY=--verbosity=diagnostic
export VERBOSITY=

sh ./build.sh $VERBOSITY --target=clean \
&& \
sh ./build.sh $VERBOSITY --target=binderate \
&& \
sh ./build.sh $VERBOSITY --target=nuget-restore \
&& \
sh ./build.sh $VERBOSITY --target=libs \
&& \
sh ./build.sh $VERBOSITY --target=merge \
&& \
sh ./build.sh $VERBOSITY --target=diff 
```


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



```
export VERBOSITY=
# export VERBOSITY=--verbosity=diagnostic
sh ./build.sh $VERBOSITY --target=clean \
&& \
sh ./build.sh $VERBOSITY --target=binderate \
&& \
mono ./tools/nuget.exe restore ./generated/AndroidSupport.sln \
&& \
sh ./build.sh $VERBOSITY --target=libs \
&& \
sh ./build.sh $VERBOSITY --target=merge \
&& \
sh ./build.sh $VERBOSITY --target=diff 
```