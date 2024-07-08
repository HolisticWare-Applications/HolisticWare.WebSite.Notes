# User Secrets

user-secrets.md

*   add a `UserSecretsId` element within a PropertyGroup of the project file

*   default, the inner text of UserSecretsId is a GUID
* The inner text is arbitrary, but is unique to the project.
* $(ProjectName)`

```bash
dotnet user-secrets \
    init
```

```pwsh
dotnet user-secrets `
    init
```

```bash
dotnet user-secrets \
    init \
    --project AppConsole.BenchmarkDotNet/AppConsole.BenchmarkDotNet.csproj
```

```pwsh
dotnet user-secrets `
    init `
    --project AppConsole.BenchmarkDotNet/AppConsole.BenchmarkDotNet.csproj
```

```xml
	<PropertyGroup>
		<UserSecretsId>[your guid]</UserSecretsId>
	</PropertyGroup>
```

```xml
<PropertyGroup>
    <TargetFramework>net7.0</TargetFramework>
    <Nullable>enable</Nullable>
    <ImplicitUsings>enable</ImplicitUsings>
    <UserSecretsId>dotnet-UserSecrets-3825E1F5-F0B3-4C37-80C4-D5F24C7F6645</UserSecretsId>
</PropertyGroup>
```

MSBuild properties:

```xml
<Project Sdk="Microsoft.NET.Sdk.Web">
    <PropertyGroup>
        <UserSecretsId>$(ProjectName)</UserSecretsId>
    </PropertyGroup>
</Project>
```


## Setting values

```
dotnet user-secrets \
    set \
    "Movies:ServiceApiKey" "12345"
```

```
dotnet user-secrets \
    set \
    "Movies:ServiceApiKey" "12345" \
        --project PATH_TO_PROJECT_FOLDER
```

```bash
dotnet user-secrets \
    set \
    "Movies:ServiceApiKey" "12345" \
        --project AppConsole.BenchmarkDotNet/AppConsole.BenchmarkDotNet.csproj
```

```pwsh
dotnet user-secrets `
    set `
    "Movies:ServiceApiKey" "12345" `
        --project AppConsole.BenchmarkDotNet/AppConsole.BenchmarkDotNet.csproj
```


### Settings storage location

```bash
tree $HOME/.microsoft/usersecrets/
```

```bash
$HOME/.microsoft/usersecrets/<user_secrets_id>/secrets.json
```

```pwsh
%APPDATA%\Microsoft\UserSecrets\<user_secrets_id>\secrets.json
```

## Links

*   https://learn.microsoft.com/en-us/aspnet/core/security/app-secrets

*   https://blog.jetbrains.com/dotnet/2023/01/17/securing-sensitive-information-with-net-user-secrets/

*   https://learn.microsoft.com/en-us/dotnet/api/microsoft.extensions.configuration.usersecretsconfigurationextensions.addusersecrets?view=dotnet-plat-ext-8.0

*   https://dontpaniclabs.com/blog/post/2023/03/02/how-to-set-up-user-secrets-for-net-core-projects-in-visual-studio/

*   https://stackoverflow.com/questions/67869684/utilising-user-secrets-in-net-5-console-app
    
*   https://stackoverflow.com/questions/58874859/cant-access-user-secrets-in-asp-net-core-3-0

*   https://medium.com/@s.faizaan7/manage-the-secrets-using-asp-net-core-secret-manager-with-visual-studio-f254bb0bab91

*   https://blog.xmi.fr/posts/dotnet-console-app-with-secrets/

*   https://medium.com/@thomasardal/asp-net-core-not-that-secret-user-secrets-explained-235d92bd8063

*   https://www.frakkingsweet.com/add-usersecrets-to-net-core-console-application/

