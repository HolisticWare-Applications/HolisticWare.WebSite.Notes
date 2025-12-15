# Public API

public-api.md

Public API


```
PublicAPI.Shipped.txt
PublicAPI.Unshipped.txt
```

```xml
<PackageReference Include="Microsoft.CodeAnalysis.PublicApiAnalyzers" Version="3.3.4">
  <PrivateAssets>all</PrivateAssets>
  <IncludeAssets>runtime; build; native; contentfiles; analyzers</IncludeAssets>
</PackageReference>
```

*   https://www.nuget.org/packages/Microsoft.CodeAnalysis.PublicApiAnalyzers

*   https://andrewlock.net/preventing-breaking-changes-in-public-apis-with-publicapigenerator/

*   https://medium.com/workleap/preventing-breaking-changes-in-net-class-libraries-e61ae93b1b46

*   https://steven-giesel.com/blogPost/09952d3c-6bbe-477b-b0ea-07276cdb3ba6

*   https://stackoverflow.com/questions/73257002/generate-text-file-of-public-api-of-net-library-for-versioning-and-compatibilit

*   https://stackoverflow.com/questions/70120474/how-to-ensure-that-the-library-package-that-im-maintaining-is-backward-compatib



```csharp
[Fact]
public void my_assembly_has_no_public_api_changes()
{
    var publicApi = typeof(Library).Assembly.GeneratePublicApi();

    var approvedFilePath = "PublicApi.approved.txt";
    if (!File.Exists(approvedFilePath))
    {
        // Create a file to write to.
        using (var sw = File.CreateText(approvedFilePath)) { }
    }

    var approvedApi = File.ReadAllText(approvedFilePath);

    Assert.Equal(approvedApi, publicApi);
}
```