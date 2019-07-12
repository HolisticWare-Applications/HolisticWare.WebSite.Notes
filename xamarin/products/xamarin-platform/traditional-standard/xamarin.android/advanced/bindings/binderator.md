# Binderator

binderator.md

```
git clean -xfd
git pull
export LOCAL_TEST_PKG=true
sh ./build.sh --target=clean && sh ./build.sh --target=binderate && sh ./build.sh --target=libs \
&& \
sh ./build.sh --target=nuget && sh ./build.sh --target=samples
```