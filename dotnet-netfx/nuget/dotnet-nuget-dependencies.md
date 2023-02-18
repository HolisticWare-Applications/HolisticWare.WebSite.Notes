# DotNet Nuget Dependencies

dotnet-nuget-dependencies.md

*   https://nuget-tutorial.net/en/tutorial/100000/overview


```
dotnet msbuild /t:GenerateRestoreGraphFile /p:RestoreGraphOutputPath=graph.dg
```

Add packages:

```
dotnet add NuGet.ProjectModel
dotnet add Newtonsoft.Json
```


dotnet add package NuGet.ProjectModel
dotnet add package Newtonsoft.Json
Now you can to load the contents of the dependency graph from the generated file, deserialise the JSON into a JObject and then pass that to the constructor of the DependencyGraphSpec class.

string dependencyGraphText = File.ReadAllText(dgOutput);
var dependencyGraph = new DependencyGraphSpec(JsonConvert.DeserializeObject<JObject>(dependencyGraphText));
```

*   https://stackoverflow.com/questions/6653715/view-nuget-package-dependency-hierarchy

*   https://www.jerriepelser.com/blog/analyze-dotnet-project-dependencies-part-1/

*   https://www.jerriepelser.com/blog/analyze-dotnet-project-dependencies-part-2/

*   https://github.com/jerriepelser-blog/AnalyzeDotNetProject

*   https://blog.ndepend.com/fixing-tangled-dependency-graph/

*   https://github.com/ThomasArdal/NuGetPackageVisualizer

*   https://github.com/OctopusDeploy/ICanHasDotnetCore

*   https://joelverhagen.github.io/NuGetUndocs/#introduction


