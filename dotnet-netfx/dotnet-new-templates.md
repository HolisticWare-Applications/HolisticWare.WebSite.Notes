# dotnet new templates

dotnet-new-templates.md

*   https://github.com/dotnet/templating/

    *   https://github.com/dotnet/templating/wiki/Available-templates-for-dotnet-new

*   https://dotnetnew.azurewebsites.net/

    *   https://dotnetnew.azurewebsites.net/Search/holisticware

*   https://www.skylinetechnologies.com/Blog/Skyline-Blog/April_2019/creating-installing-project-templates-dotnet-core

*   https://www.infoq.com/articles/dotnet-core-template-engine/

*   https://www.jerriepelser.com/blog/tips-for-developing-dotnet-new-templates/




https://docs.microsoft.com/en-us/dotnet/core/tools/dotnet-pack

## Packaging

`dotnet pack` cannot pack `*.nuspec` files without `*.csproj` files

```
dotnet pack \
    --no-build \
    -p:NuspecFile=./HolisticWare.DotNetNew.XamarinProjectsStructureTemplate.CSharp.nuspec 
```

https://github.com/NuGet/Home/issues/4254

```
nuget pack \
    ./HolisticWare.DotNetNew.XamarinProjectsStructureTemplate.CSharp.nuspec 
```

## Installing



### Sample - HolisticWare Xamarin Folder structure

*   repo

    *   https://github.com/holisticware-xamarin/HolisticWare.DotNetNew.XamarinProjectsStructureTemplate

*   https://dotnetnew.azurewebsites.net/template/HolisticWare.DotNetNew.XamarinProjectsStructureTemplate.CSharp


From published nuget package:

```
dotnet new --install \
    "HolisticWare.DotNetNew.XamarinProjectsStructureTemplate.CSharp"
```

From local nuget package:

```
dotnet new --install  \
    ~/nuget-local/HolisticWare.DotNetNew.XamarinProjectsStructureTemplate.CSharp.2019.10.28.nupkg 
```

```
dotnet new hw-structure --output Demo
```

```
dotnet new hw-structure -o Demo
```


```
export TEMPLATES=\
"\
Microsoft.AspNetCore.Blazor.Templates
Microsoft.AspNetCore.SpaTemplates::*
Microsoft.AspNetCore.Blazor.Templates::*
AspNetCore.WebApi.Templates
Microsoft.DotNet.Web.Spa.ProjectTemplates
Microsoft.DotNet.Web.ProjectTemplates.2.2
MicroServiceWebApiTemplate
Boxed.Templates::*
Toolbelt.AspNetCore.Blazor.Minimum.Templates
Microsoft.DotNet.Web.Client.ItemTemplates
Amazon.Lambda.Templates::*
Cake.Frosting.Template::*
CarterTemplate::*
cloudscribe.templates::*
DotVVM.Templates::*
Eto.Forms.Templates::*
GCC.Build.Template
iQuarc.Geco.CSharp::*
GtkSharp.Template.CSharp
KenticoCloud.CloudBoilerplateNet::*
MonoGame.Template.CSharp
MSBuildExtensionTemplate::*
dotnet-new-nspec::*
NUnit3.DotNetNew.Template::*
Paulovich.Caju::*
Paulovich.Manga::*
FiftyProtons.Templates.PSCore::*
Prism.Forms.QuickstartTemplates::*
RaspberryPi.Template::*
ServiceStack.Core.Templates::*
FiftyProtons.Templates.DotNetNew::*
Popov1024.HttpApi.Template.CSharp::*
HoNoSoFt.DotNet.Web.Spa.ProjectTemplates::*
GL.NetCoreSourceLinked.CSharp
"

# --install 
# -i
# --uninstall 
# -u

for TEMPLATE in $TEMPLATES;
do
    echo $TEMPLATE
#    dotnet new \
#        --install \
#        "$TEMPLATE"
done

```









