# Source Build

source-build.md

MAUI build source:

```
git clean -xdf && git pull
dotnet tool restore
dotnet cake --target=VS --workloads=global
```
