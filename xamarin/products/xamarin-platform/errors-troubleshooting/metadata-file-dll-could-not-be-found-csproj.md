# Metadata file '.dll' could not be found [.csproj]

metadata-file-dll-could-not-be-found-csproj.md

After Visual Studio updates often following error will happen:

```
CSC : error CS0006: 
Metadata file 
    '.dll'
could not be found 
    [.csproj]
```
## [Re]Solution / Workaround

1.  Build +/ Configuration

    1.  Check if project dependencies are built

        If necessary check/uncheck!

## References / Links

*   

*   

## Samples       

### Sample Release

```
"source\Xamarin.Auth-Library-VS2015.sln" (Build target) (1) ->
"source\Extensions\Xamarin.Auth.Extensions.LinkSource\Xamarin.Auth.Extensions.LinkSource.csproj" 
(default target) 
CSC : error CS0006: 
Metadata file 
    'source\Core\Xamarin.Auth.Common.LinkSource\bin\Release\Xamarin.Auth.dll'
could not be found 
    [source\Extensions\Xamarin.Auth.Extensions.LinkSource\Xamarin.Auth.Extensions.LinkSource.csproj]
```