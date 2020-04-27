# JAR libraries (`lint.jar`) with identical name with inconsistent file contents.

jar-libraries-lint-jar-with-identical-name-with-inconsistent-file-contents.md

Newest updates for AndroidX (some are needed for GooglePlayServices+Firebase) fail during build of samples
(cake arget `-t=samples`)

```
/Library/Frameworks/Mono.framework/External/xbuild/Xamarin/Android/Xamarin.Android.Common.targets(1092,3): 
error : 
You have Jar libraries, 
    lint.jar, 
    lint.jar, 
    lint.jar, 
that have the identical name with inconsistent file contents. Please make sure to remove any conflicting 
libraries in EmbeddedJar, InputJar and AndroidJavaLibrary. 
[samples/BuildAll/BuildAll/BuildAll.csproj]
```

Different `lint.jar` files appear in 3 AndroidX artifacts (1st column is size):

```
33755  ./externals/androidx.fragment/fragment/lint.jar
20773  ./externals/androidx.work/work-runtime/lint.jar
10997  ./externals/androidx.annotation/annotation-experimental/lint.jar
```

And ends up in the sample:

```
10997 Mar  5 22:51 ./samples/BuildAll/BuildAll/obj/Debug/lp/174/jl/lint.jar
20773 Mar  5 22:51 ./samples/BuildAll/BuildAll/obj/Debug/lp/120/jl/lint.jar
33755 Mar  5 22:51 ./samples/BuildAll/BuildAll/obj/Debug/lp/106/jl/lint.jar
```

Every attempt to remove `lint.jar` files from the build - FAILED.

## Workarounds


### Physically removing files

Removing files after "binderate" target/step:

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
		DeleteFile(file);
	}

});
```

and excluding the file in Razor template (MsBuild):

```
    <InputJar Remove="..\..\externals\@(art.MavenGroupId)\@(art.MavenArtifactId)\lint.jar" />
    <InputJar Remove="..\..\externals\@(art.MavenGroupId)\@(art.MavenArtifactId)\**\lint.jar" />
```
