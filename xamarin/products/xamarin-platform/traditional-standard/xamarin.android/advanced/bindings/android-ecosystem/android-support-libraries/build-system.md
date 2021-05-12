# Build System

There are 2 build systems:

1.  old, where each Android artifact had its own project files manually created

    up to version (excluding) Android Support Libraries 28.0.0

2.  new, where project files (*.csproj and *.targets) are automatically generated with Binderator

    Razor templates for `*.csproj` and `*.targets` files using RazorLight project.


https://github.com/toddams/RazorLight




## Builds utilizing Binderator    


```
  <ItemGroup>
    <PackageReference Include="MSBuild.Sdk.Extras" Version="1.4.0" PrivateAssets="All" />
    <PackageReference Include="HolisticWare.Xamarin.Tools.Bindings.XamarinAndroid.Decompilers" Version="0.0.5" PrivateAssets="All" />
  </ItemGroup>
```


```
    "debug": { "DumpModels" : true },
```

```
[{
	"mavenRepositoryType" : "Google",
	"slnFile" : "generated/GooglePlayServices.sln",
	"debug": { "DumpModels" : true },
	"additionalProjects": [
	],
	"templates" : [
		{
			"templateFile": "source/GooglePlayServicesTargets.cshtml",
			"outputFileRule" : "generated/{groupid}.{artifactid}/{nugetid}.targets"
		},
		{
			"templateFile": "source/GooglePlayServicesProject.cshtml",
			"outputFileRule" : "generated/{groupid}.{artifactid}/{groupid}.{artifactid}.csproj"
		}
	],
	"artifacts" : [
		{
			"groupId" : "com.google.android.gms",
			"artifactId" : "play-services-ads",
			"version" : "15.0.1",
			"nugetId" : "Xamarin.GooglePlayServices.Ads"
		},
    ]
}
```