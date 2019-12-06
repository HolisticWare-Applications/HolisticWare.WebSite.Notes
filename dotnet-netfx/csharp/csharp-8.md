# C# 8

csharp-8.md

*   https://www.youtube.com/watch?v=TJiLhRPgyq4&list=PLReL099Y5nRd04p81Q7p5TtyjCrj9tz1t&index=3&t=0s

## Nullable

Enable analysis (warnings):

csproj:

```
    <PropertyGroup>
        <Nullable>enable</Nullable>
    </PropertyGroup>
```

File level

```csharp
#nullable disable
#nullable enable
```