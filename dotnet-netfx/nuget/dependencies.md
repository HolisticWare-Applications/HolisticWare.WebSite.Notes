# Dependencies

dependencies.md

*   https://github.com/diagnostica-stago/SolutionDependencyAnalyzer

```
dotnet tool uninstall --global \
    dependency-analyzer \
    dotnet-depends

dotnet tool install --global \
    dependency-analyzer \
    dotnet-depends
```



```
dependency-analyzer <SolutionFullPath> <OutputPath>
```

https://github.com/bjorkstromm/depends

dotnet depends ./depends.sln
