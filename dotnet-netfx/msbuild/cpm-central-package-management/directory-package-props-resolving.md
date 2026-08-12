# `Directory.Package.props` resolving

directory-package-props-resolving.md

*   https://github.com/search?q=path%3A*.props+path%3A**%2FDirectory.Packages.props+Import&type=code

    ```
    path:*.props path:**/Directory.Packages.props Import
    ```

```xml
  <Import 
    Condition="$([MSBuild]::GetPathOfFileAbove('Directory.Packages.props', '$(MSBuildThisFileDirectory)../')) != ''"
    Project="$([MSBuild]::GetPathOfFileAbove('Directory.Packages.props', '$(MSBuildThisFileDirectory)../'))" 
    />
```