# Directory.Build.targets NuGet Central management

directory-build-targets-nugets-central-management.md


*   put NuGet's in one place: 

    *   https://github.com/jonathanpeppers/boots/blob/main/Directory.Build.targets

    *   lets all the versions be in this file

    *   each project only puts the package name without the version 
    
        ```
        <PackageReference Include="Xamarin.Forms" />
        ```

    *   This `Update` comes along and makes sure the whole repo is on one version

