# Component/Package Metadata Info

component-package-metadata-fwlinks.md

## nuspec metadata info
 
 - `authors` and `owners` elements must be `Microsoft`
 - `requireLicenseAcceptance` element must be set to true
 - `copyright` element must be set to `© Microsoft Corporation. All rights reserved.`
 - `projectUrl` should use a [FWLink](#fwlink) and must point to a valid site.  This is typically the GitHub location of the project.
 - `licenseUrl`  should use FWLinks and must point to a valid site with license.  This is typically the GitHub location of the project's license markdown file.

 
 
## FWLink

FWLink is a URL redirection service with which users can create link entries that will allow them to easily and systematically manage changes to the destination URLs and maintain consistency and availability of content linked from products, documentations and other sources across Microsoft.  

To create and change a FWLink visit the [following site][1].

| Name                  | Value                                                |
|-----------------------|------------------------------------------------------|
| Group Owner           | xamacomd                                             |
| Long Url              | target url the link points to                        |
| Product (PRD)         | Visual Studio (12514)                                |
| Sub Product (SBP)     | Xamarin Components                                   |
| Area (AR)             | Name of the GitHub repository                        |
| Sub Area (SBA)        | What the link is for.  "ProjectUrl" or "LicenseUrl"  |
| Optional Field 1 (O1) | Id of the NuGet package                              |
| Optional Field 2 (O2) | What the link is for, same as "Sub Area (SBA)" above |
| Description           | A message that contains the NuGet id and what the link is for.  Eg: "Xamarin.Android.ShimmerLayout NuGet Project Url" | 
 
## AssemblyFileVersion

Setting the AssemblyFileVersion assembly attribute will set the Win32 file version for the dll.

This number should match the version of the NuGet.  For pre-release packages set and increment the `FilePrivatePart` or 4th digit. 

`[assembly: AssemblyFileVersion ("0.6.0.0")]`

**Important**

`AssemblyVersion` should never be changed.  This can break other dlls that depend on the dll being built.


[1]: https://urlmanager.cloudapp.net/app/html/index.html#/go.microsoft.com.fwlink







# Component/Package Metadata Info

component-package-metadata-fwlinks.md

## nuspec metadata info
 
 - `authors` and `owners` elements must be `Microsoft`
 - `requireLicenseAcceptance` element must be set to true
 - `copyright` element must be set to `© Microsoft Corporation. All rights reserved.`
 - `projectUrl` should use a [FWLink](#fwlink) and must point to a valid site.  This is typically the GitHub location of the project.
 - `licenseUrl`  should use FWLinks and must point to a valid site with license.  This is typically the GitHub location of the project's license markdown file.

 
 
## FWLink

FWLink is a URL redirection service with which users can create link entries that will allow them to easily and systematically manage changes to the destination URLs and maintain consistency and availability of content linked from products, documentations and other sources across Microsoft.  

To create and change a FWLink visit the [following site][1].

| Name                  | Value                                                |
|-----------------------|------------------------------------------------------|
| Group Owner           | xamacomd                                             |
| Long Url              | target url the link points to                        |
| Product (PRD)         | Visual Studio (12514)                                |
| Sub Product (SBP)     | Xamarin Components                                   |
| Area (AR)             | Name of the GitHub repository                        |
| Sub Area (SBA)        | What the link is for.  "ProjectUrl" or "LicenseUrl"  |
| Optional Field 1 (O1) | Id of the NuGet package                              |
| Optional Field 2 (O2) | What the link is for, same as "Sub Area (SBA)" above |
| Description           | A message that contains the NuGet id and what the link is for.  Eg: "Xamarin.Android.ShimmerLayout NuGet Project Url" | 
 
## AssemblyFileVersion

Setting the AssemblyFileVersion assembly attribute will set the Win32 file version for the dll.

This number should match the version of the NuGet.  For pre-release packages set and increment the `FilePrivatePart` or 4th digit. 

`[assembly: AssemblyFileVersion ("0.6.0.0")]`

**Important**

`AssemblyVersion` should never be changed.  This can break other dlls that depend on the dll being built.


[1]: https://urlmanager.cloudapp.net/app/html/index.html#/go.microsoft.com.fwlink


https://aka.ms
