

Get-Command -Module PackageManagement  

Get-PackageProvider # -Shows package providers installed on your machine)
Find-PackageProvider # -Find online package providers you can pull down and install)
Get-PackageSource # -List all package sources, with it's provider name)
Register-PackageSource # -Register new package source for a provider)


# https://blogs.technet.microsoft.com/packagemanagement/2015/05/05/10-things-about-oneget-that-are-completely-different-than-you-think/

Register-PackageSource `
    -Name chocolatey `
    -Location http://chocolatey.org/api/v2 `
    -ProviderName PSModule `
    -Trusted `
    -Verbose
 