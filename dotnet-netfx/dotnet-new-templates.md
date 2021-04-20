# dotnet new templates

dotnet-new-templates.md

*   https://github.com/dotnet/templating/

    *   https://github.com/dotnet/templating/wiki/Available-templates-for-dotnet-new

*   https://dotnetnew.azurewebsites.net/

    *   https://dotnetnew.azurewebsites.net/Search/holisticware

*   https://www.skylinetechnologies.com/Blog/Skyline-Blog/April_2019/creating-installing-project-templates-dotnet-core

*   https://www.infoq.com/articles/dotnet-core-template-engine/

*   https://www.jerriepelser.com/blog/tips-for-developing-dotnet-new-templates/

*   https://docs.microsoft.com/en-us/dotnet/core/tools/dotnet-pack

*   https://dotnetnew.azurewebsites.net/template/HolisticWare.DotNetNew.XamarinProjectsStructureTemplate.CSharp/HolisticWare.DotNetNew.XamarinProjectsStructureTemplate.CSharp

*   https://rehansaeed.com/custom-project-templates-using-dotnet-new/

*   https://rehansaeed.com/dotnet-new-feature-selection/

*   https://rehansaeed.com/unit-testing-dotnet-new-templates/

*   https://www.bignerdranch.com/blog/descent-into-databinding/


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

install:

```
dotnet new --install \
    "HolisticWare.DotNetNew.XamarinProjectsStructureTemplate.CSharp"
```

usage:

```
dotnet new hw-structure

```

uninstall:

```
dotnet new --uninstall \
    "HolisticWare.DotNetNew.XamarinProjectsStructureTemplate.CSharp"
```

```
dotnet new -i MyNuGetPackage::version.
```

reset to the initial install state:

```
dotnet new --debug:reinit
```

```
dotnet nuget locals all --clear
dotnet new --install \
    "HolisticWare.DotNetNew.XamarinProjectsStructureTemplate.CSharp"
```

## Packaging

*   `*.nuspec` must be on the same level where `Content\`folder resides (otherwise packaging fails)

```
nuget pack smoething.nuspec
```



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





create a dotnet template

https://github.com/dotnet/templating/wiki/Available-templates-for-dotnet-new

https://dotnetnew.azurewebsites.net/Search/holisticware

https://dotnetnew.azurewebsites.net/template/HolisticWare.DotNetNew.XamarinProjectsStructureTemplate.CSharp/HolisticWare.DotNetNew.XamarinProjectsStructureTemplate.CSharp

## Item Template

*   https://docs.microsoft.com/en-us/dotnet/core/tutorials/cli-templates-create-item-template

```
mkdir tests
mkdir source
mkdir source/templates
cd    source/templates
```

An item template is a specific type of template that contains one or more files



When you create a template, all files and folders in the template folder are included as part of the 
template except for the special config folder. This config folder is named .template.config.

First, create a new subfolder named .template.config, enter it. Then, create a new file named template.json. 
Folder structure should look like this:

```
mkdir .template.config
# touch .template.config/template.json
echo \
"
{
    "$schema": "http://json.schemastore.org/template",
    "author": "HolisticWare/Xamarin/Microsoft moljac Miljenko Mel Cvjetko",
    "classifications":
        [
            // Tags used to search for the template.
            "Common",
            "Code",
            "Custom Templates",
            "Xamarin",
            "HolisticWare",
            "Cross Platform",
            "xplat"
        ],
    "groupIdentity": "HolisticWare.Tools.ItemTemplates",
    "name": "Custom template for Cake script with debugging support",
    // A unique ID for the project template.
    "identity": "HolisticWare.DotNetNew.Cake.Script.Debugging.CSharp",
    // for commandline project creation
    "shortName": "hw-cake",
    "tags": 
    {
        "language": "C#",
        "type": "item"
    }
}
" \
>>  .template.config/template.json
cat .template.config/template.json

```


*   https://docs.microsoft.com/en-us/dotnet/core/tutorials/cli-templates-create-project-template

*   https://docs.microsoft.com/en-us/dotnet/core/tools/custom-templates

*   https://devblogs.microsoft.com/dotnet/how-to-create-your-own-templates-for-dotnet-new/

*   https://www.infoq.com/articles/dotnet-core-template-engine/

*   https://weblog.west-wind.com/posts/2020/Oct/05/Creating-a-dotnet-new-Project-Template

*   https://www.telerik.com/blogs/create-your-own-net-core-templates-in-4-easy-steps

*   https://github.com/dotnet/dotnet-template-samples

*   https://automationrhapsody.com/create-project-for-net-core-custom-template/




*   https://www.youtube.com/watch?v=GDNcxU0_OuE&ab_channel=MicrosoftVisualStudio

*   https://channel9.msdn.com/Shows/Code-Conversations/Sayed-Hashimi-on-Open-Source-NET-Core-Project-Templates
