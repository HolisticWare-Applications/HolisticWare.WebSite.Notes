# JAR libraries with identical names and inconsistent contents (`lint.jar`)

jar-libraries-with-identical-names-and-inconsistent-contents-lint-jar.md

Blocking issue for newest AndroidX updates (also needed for GPS-FB with AndroidX prerelease)

```
dotnet cake -t=clean && dotnet cake -t=ci
```

Building samples results in following error:

```
/Library/Frameworks/Mono.framework/External/xbuild/Xamarin/Android/Xamarin.Android.Common.targets(1092,3): 
error : 
You have Jar libraries, 
    lint.jar, 
    lint.jar, 
    lint.jar, 
that have the identical name with inconsistent file contents. 
Please make sure to remove any conflicting libraries in EmbeddedJar, InputJar and AndroidJavaLibrary. 
[samples/BuildAll/BuildAll/BuildAll.csproj]
```

3 lint.jar files are dependencies for 3 artifacts:

```
$ find . -type f -name lint.jar -exec ls -al {} \;
33755 Feb  1  1980 ./externals/androidx.fragment/fragment/lint.jar
20773 Feb  1  1980 ./externals/androidx.work/work-runtime/lint.jar
10997 Feb  1  1980 ./externals/androidx.annotation/annotation-experimental/lint.jar
```

Attempt No.1  - remove physically 3 `lint.jar` files from `externals/` folder:

Link:

https://github.com/xamarin/AndroidX/blob/master_based_updates_202002/build.cake#L224-L254

Code: 

```
Task ("binderate")
	.IsDependentOn("binderate-config-verify")
	.Does (() =>
{
	var configFile = MakeAbsolute(new FilePath("./config.json")).FullPath;
	var basePath = MakeAbsolute(new DirectoryPath ("./")).FullPath;

	// Run the dotnet tool for binderator
	RunProcess("xamarin-android-binderator",
		$"--config=\"{configFile}\" --basepath=\"{basePath}\"");

	// format the targets file so they are pretty in the package
	var targetsFiles = GetFiles("generated/**/*.targets");
	var xmlns = (XNamespace)"http://schemas.microsoft.com/developer/msbuild/2003";
	foreach (var targets in targetsFiles) {
		var xdoc = XDocument.Load(targets.FullPath);
		xdoc.Save(targets.FullPath);
	}

	// different lint.jar files in artifacts causing R8 errors
	FilePathCollection files = GetFiles("./externals/**/lint.jar");
	foreach(FilePath file in files)
	{
		Information($"Deleting: {file}");
		if (cleanup)
		{
			DeleteFile(file);
		}
	}

});
```

Attempt No.2 was to change binderator Razor project template

Link:

https://github.com/xamarin/AndroidX/blob/master_based_updates_202002/source/AndroidXProject.cshtml#L145-L146

Code: 

```
  @if (@Model.MavenArtifacts.Count > 0) {
  <ItemGroup>
    @foreach (var art in @Model.MavenArtifacts) 
    {
      if (art.MavenArtifactPackaging == "aar") 
      {
    <InputJar Include="..\..\externals\@(art.MavenGroupId)\@(art.MavenArtifactId)\classes.jar" />
    <!-- For those artifacts with lib/ folder -->
    <InputJar 
      Condition="Exists('..\..\externals\@(art.MavenGroupId)\@(art.MavenArtifactId)\libs\')"
      Include="..\..\externals\@(art.MavenGroupId)\@(art.MavenArtifactId)\libs\*.jar" 
      />
      } 
      else 
      {
    <InputJar Include="..\..\externals\@(art.MavenGroupId)\@(art.MavenArtifactId).jar" />
      }
    <InputJar Remove="..\..\externals\@(art.MavenGroupId)\@(art.MavenArtifactId)\lint.jar" />
    <InputJar Remove="..\..\externals\@(art.MavenGroupId)\@(art.MavenArtifactId)\**\lint.jar" />
    }
  </ItemGroup>
  }
```

With both attempts - issue still persists.

