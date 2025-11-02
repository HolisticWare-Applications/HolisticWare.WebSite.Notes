MSBuild Tasks

msbuild-tasks.md

deliver msbuild property through nuget package


*   Sharing MSBuild Tasks as NuGet Packages with Nate McMaster

    *   https://www.youtube.com/watch?v=XagPwnXAfKQ&t=61s&ab_channel=.NETFoundation

*   deliver MSBuild properties through a NuGet package

    *   include a .props file within the package's folders
    
        *   `build/` or 

        *   `buildMultiTargeting/`

        .props file will be automatically imported by MSBuild when the NuGet package is referenced, 
        making the properties defined within it available to the consuming project. 

1. Create a NuGet Package:

    Use the dotnet pack command or NuGet.exe to create the package. 

    Ensure your project has the necessary metadata (like a .nuspec file) to define the package's contents and dependencies. 

2. Add the .props file:

    Create a file named <package_id>.props (e.g., MyPackage.props). 

    Place this file in the 
        build/ or 
        buildMultiTargeting/ directory within your NuGet package. 
    
    
        build/ 
        
            used for targeting a single framework, 
        
        buildMultiTargeting/ 
            used for multi-targeting projects. 


