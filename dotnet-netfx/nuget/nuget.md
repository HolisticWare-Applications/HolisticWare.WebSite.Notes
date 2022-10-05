# NuGet


* https://fuget.org/packages?q=xamarin.auth

* https://github.com/NuGetPackageExplorer/NuGetPackageExplorer

## Environment Variables

NUGET_PACKAGES environment variable

*   https://docs.microsoft.com/en-us/nuget/reference/nuget-config-file


layout a directory structure that follows the NuGet conventions.

tools - The tools folder of a package is for powershell scripts and programs accessible from the Package Manager Console. After the folder is copied to the target project, it is added to the `$env:Path (PATH) environment variable.

lib - Assemblies (.dll files) in the lib folder are added as assembly references when the package is installed.

content - Files in the content folder are copied to the root of your application when the package is installed.

Think of the Content folder as the root of your target application. For example, if I want a package to add an image in the /images directory of the target application, make sure to place the image in the Content/images folder of the package."

see : http://docs.nuget.org/docs/creating-packages/creating-and-publishing-a-package#From_a_convention_based_working_directory



Be aware that content is only copied when the package is installed, upgrading/ restoring the package doesn't change the content, therefore content cannot be upgraded with nuget. Nuget is really only useful for .net assembly dependencies



can also use the section of the nuspec to move your file into the content folder when the package is being built:

<?xml version="1.0"?>
<package>
  <metadata>
    ...
  </metadata>
  <files>
    <file src="App.Template.config" target="content" />
    <file src="Program.template.cs" target="content" />
  </files>
</package>

can read all about how to create a .nuspec file in the Nuspec Reference, specifically the section about Specifying Files to Include in the Package.

If you want to include a folder (recursively?) in the package, you need to add something like this to the XML:

<files>
  <file src="bin\Release\**\*.*" target="content" /> 
</files>
This will take all the files and (recursive) sub-folders of the bin\Release folder and put them in the content folder of the NuGet package.



	
If you don't specify a target (content), it'll put everything in the root. Content is a special folder in NuGet packages

http://www.hanselman.com/blog/CreatingANuGetPackageIn7EasyStepsPlusUsingNuGetToIntegrateASPNETMVC3IntoExistingWebFormsApplications.aspx


## Insights

*   https://github.com/nuget/insights

