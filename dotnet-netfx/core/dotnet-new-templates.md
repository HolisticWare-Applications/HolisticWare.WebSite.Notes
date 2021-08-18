# dotnet new templates

Templates are nuget packages listed on nuget:

https://www.nuget.org/

and `dotnetnew` site where lists of templates can be found:

*   https://dotnetnew.azurewebsites.net/

    *   http://dotnetnew.azurewebsites.net/


## HolisticWare `dotnet new` template for common filesystem (folder) structure

Nuget:

https://www.nuget.org/packages/HolisticWare.DotNetNew.XamarinProjectsStructureTemplate.CSharp/

`dotnetnew` 

http://dotnetnew.azurewebsites.net/Search/holisticware

http://dotnetnew.azurewebsites.net/template/HolisticWare.DotNetNew.XamarinProjectsStructureTemplate.CSharp/HolisticWare.DotNetNew.XamarinProjectsStructureTemplate.CSharp

```
    nuget push \
        -Source https://www.nuget.org/api/v2/package \
        HolisticWare.DotNetNew.XamarinProjectsStructureTemplate.CSharp.2017.12.3.nupkg
```

### Installation

```
    dotnet new \
        --install “HolisticWare.DotNetNew.XamarinProjectsStructureTemplate.CSharp”
```

### Usage

Simple usage:

```
    dotnet new hw-structure
```

will generate folder structure in current folder.

```
    dotnet new hw-structure -n Stirpe -o Stripe
```

Template will generate output folder Stripe with our structure (nuget, source, samples, 
tests, …) bunch of projects containing “Stripe” (from name -n option).

Libraries in source are bait-n-switch ready. So, for the name `Stripe`, namespace will be 
`Stripe` and assembly-name `Stripe[.dll]` in all projects.


Attempt to simplify usage (to remove redundant -n NAME -o NAME) by creating deeper folder 
structure with `XamarinProjectsStructureTemplate` was not succesful.

https://github.com/moljac/HolisticWare.DotNetNew.XamarinProjectsStructureTemplate/blob/master/Content/.template.config/template.json#L33

Basically template creates folder structure and replaces `XamarinProjectsStructureTemplate`
from the template with string provided in name (-n) option. So, `Stripe` replaces all 
occurrences `"sourceName": "XamarinProjectsStructureTemplate",` in all textual files (still investigating, but seems like solution files, project files, Cake, readme.md etc are affected) 


Seems like `hw-structure` in `dotnet new hw-structure` after installation is unique, so we need to think of prefix ASAP (xct for Xamarin Components team) otherwise the install command is loooooong.

So `xct-structure` and others for our needs.


Just tested on other Mac and new version of the template is a lot better.
There are few “BetterPicker” strings not replaced in build.cake, but almost everything is in place.

NOTE: ping me with desires/fixes what to add into template. 

Right now I work on empty folder placehoders (externals). Needs some special filename I think I saw “-.-” or similar.


## Uninstalling manually 

```
tree $HOME/.templateengine/dotnetcli/v6.0.100-preview.3.21202.5
```

```
$HOME/.templateengine/dotnetcli/v6.0.100-preview.3.21202.5
├── content
├── installUnitDescriptors.json
├── nugetTemplateSearchInfo.json
├── nugetTemplateSearchInfo.json.etag
├── packages
│   ├── microsoft.android.templates.11.0.200-preview.3.196.nupkg
│   ├── microsoft.aspnetcore.components.webassembly.templates.3.2.1.nupkg
│   ├── microsoft.dotnet.common.itemtemplates.6.0.100-preview.3.21179.1.nupkg
│   ├── microsoft.dotnet.common.projecttemplates.3.0.2.0.0-preview8.19373.1.nupkg
│   ├── microsoft.dotnet.common.projecttemplates.3.1.3.1.15.nupkg
│   ├── microsoft.dotnet.common.projecttemplates.5.0.5.0.203.nupkg
│   ├── microsoft.dotnet.common.projecttemplates.6.0.6.0.100-preview.3.21179.1.nupkg
│   ├── microsoft.dotnet.test.projecttemplates.3.0.1.0.2-beta4.19354.2.nupkg
│   ├── microsoft.dotnet.test.projecttemplates.3.1.1.0.2-beta4.20176.1.nupkg
│   ├── microsoft.dotnet.test.projecttemplates.5.0.1.0.2-beta4.20420.1.nupkg
│   ├── microsoft.dotnet.test.projecttemplates.6.0.1.0.2-beta4.21174.1.nupkg
│   ├── microsoft.dotnet.web.itemtemplates.6.0.0-preview.3.21201.13.nupkg
│   ├── microsoft.dotnet.web.projecttemplates.3.0.3.0.3.nupkg
│   ├── microsoft.dotnet.web.projecttemplates.3.1.3.1.15.nupkg
│   ├── microsoft.dotnet.web.projecttemplates.5.0.5.0.6.nupkg
│   ├── microsoft.dotnet.web.projecttemplates.6.0.6.0.0-preview.3.21201.13.nupkg
│   ├── microsoft.dotnet.web.spa.projecttemplates.3.0.3.0.3.nupkg
│   ├── microsoft.dotnet.web.spa.projecttemplates.3.1.3.1.15.nupkg
│   ├── microsoft.dotnet.web.spa.projecttemplates.5.0.5.0.6.nupkg
│   ├── microsoft.dotnet.web.spa.projecttemplates.6.0.6.0.0-preview.3.21201.13.nupkg
│   ├── microsoft.dotnet.winforms.projecttemplates.4.8.1-servicing.21213.7.nupkg
│   ├── microsoft.dotnet.wpf.projecttemplates.3.1.15-servicing.21213.14.nupkg
│   ├── microsoft.ios.templates.14.4.100-preview.3.1326.nupkg
│   ├── microsoft.maccatalyst.templates.14.3.100-preview.3.471.nupkg
│   ├── microsoft.macos.templates.11.1.100-preview.3.1379.nupkg
│   ├── microsoft.tvos.templates.14.3.100-preview.3.1379.nupkg
│   └── nunit3.dotnetnew.template.1.8.1.nupkg
├── settings.json
└── templatecache.json
```


```
export DOTNET_SDK=v2.0.0
export DOTNET_SDK=v2.0.0
export DOTNET_SDK=v2.0.0
export DOTNET_SDK=v2.0.0
export DOTNET_SDK=v2.0.0
export DOTNET_SDK=v2.0.0
export DOTNET_SDK=v2.0.0

$HOME/.templateengine/dotnetcli/v2.0.0/settings.json
$HOME/.templateengine/dotnetcli/v2.0.0/templatecache.json
````



## Problems observed

```
    # nuget restore invalid version errors
    dotnet new .
    # OK
    dotnet new ./
```

## Structure

*   folder `.template.config`

    *   `template.json`

    *   hosts

        dotnet new is that it’s designed to be used from multiple hosts.

        *   `dotnetcli.host.json`

        *   `vs-2017.3.host.json`

    *   visual studio `New project`

        *   `icon.png`


## Links / References

*   https://github.com/dotnet/dotnet-template-samples

*   https://github.com/dotnet/docs/blob/master/docs/core/tutorials/create-custom-template.md

*   https://github.com/dotnet/docs/blob/master/docs/core/tools/custom-templates.md

*   https://github.com/dotnet/docs/blob/master/docs/core/tools/dotnet-new.md

*   https://devblogs.microsoft.com/dotnet/how-to-create-your-own-templates-for-dotnet-new/

*   https://talkwithangel.com/creating-your-own-xamarin-projects-templates-using-net-cli/

*   http://leruplund.dk/2017/10/28/creating-your-own-visual-studio-project-template/

*   https://medium.com/shakuro/templating-projects-on-net-core-3a3d26cb1303

*   https://rehansaeed.com/dotnet-new-feature-selection/

*   https://www.jerriepelser.com/blog/tips-for-developing-dotnet-new-templates/

*   https://stackoverflow.com/questions/60056191/add-optional-content-in-dotnet-new-templates-in-non-c-sharp-files

*   https://automationrhapsody.com/create-project-for-net-core-custom-template/

*   https://rehansaeed.com/dotnet-new-feature-selection/

    *   https://rehansaeed.com/tag/dotnet-new/

*   https://weblog.west-wind.com/posts/2020/Oct/05/Creating-a-dotnet-new-Project-Template

*   https://developpaper.com/create-your-own-net-core-project-template/

Detailed:

*   https://github.com/dotnet/templating/wiki/Reference-for-template.json

s*   https://github.com/dotnet/templating/wiki/%22Runnable-Project%22-Templates

*   https://www.jerriepelser.com/blog/tips-for-developing-dotnet-new-templates/

*   https://dotnetthoughts.net/create-a-dot-net-new-project-template-in-dot-net-core/

*   https://rehansaeed.com/custom-project-templates-using-dotnet-new/

*   https://docs.particular.net/nservicebus/dotnet-templates

*   https://dotnetthoughts.net/create-a-dot-net-new-project-template-in-dot-net-core/

*   https://reynders.co/create-your-own-templates-for-dotnet-new/

*   https://jeremylindsayni.wordpress.com/2017/03/21/how-to-a-net-core-template-to-create-a-new-project-from-the-command-line-with-dotnet-new-i/

*   https://www.infoq.com/articles/dotnet-core-template-engine/

*   https://cfrenzel.com/dotnet-new-templating-nuget/

## dotnet new template postActions

*   https://github.com/dotnet/templating/wiki/Post-Action-Registry#run-script


## dotnet new template symbols

*   https://github.com/dotnet/templating/issues/1728

*   https://github.com/dotnet/templating/wiki/Reference-for-template.json#symbols

*   https://github.com/dotnet/templating/wiki/Runnable-Project-Templates---Value-Forms

*   https://www.patridgedev.com/2018/10/22/add-variables-to-your-custom-dotnet-new-template/


### Samples

*   https://github.com/aspnet/Templating/tree/master/src/Microsoft.DotNet.Web.Spa.ProjectTemplates


### String placeholder replacement

*   https://auth0.com/blog/create-dotnet-project-template/

    *   https://github.com/auth0-blog/auth0-aspnet-webapp-project-template

*   https://cfrenzel.com/dotnet-new-templating-nuget/

*   https://craftbakery.dev/2020/12/31/make-your-own-custom-netcore-template/

*   https://www.tutorialspoint.com/guava/guava_optional_class.htm

*   https://www.patridgedev.com/2018/10/09/making-a-custom-dotnet-new-template/

*   https://www.patridgedev.com/2018/10/22/add-variables-to-your-custom-dotnet-new-template/

*   https://developer.okta.com/blog/2020/04/01/cli-dotnet-templates-dotnet-core-templates

*   https://jeremylindsayni.wordpress.com/2017/03/21/how-to-a-net-core-template-to-create-a-new-project-from-the-command-line-with-dotnet-new-i/

*   http://thewindowsupdate.com/2020/09/02/net-cli-templates-in-visual-studio/

*   https://hanson.io/creating-custom-dotnet-project-templates/

*   https://talkwithangel.com/creating-your-own-xamarin-projects-templates-using-net-cli/

*   https://github.com/dotnet/templating/issues/1869

*   https://github.com/dotnet/templating/issues/2210

*   https://stackoverflow.com/questions/55705278/how-do-i-change-the-name-of-a-dotnet-new-template-when-creating-new-projects

*   https://reynders.co/create-your-own-templates-for-dotnet-new/

*   https://stackoverflow.com/questions/55738119/how-to-get-camel-case-version-of-project-name-with-net-cli-custom-templates

### Symbols

*   https://www.patridgedev.com/2018/10/29/fallback-variables-in-dotnet-new-templates/

#### Computed

*   https://github.com/dotnet/dotnet-template-samples/blob/master/15-computed-symbol/MyProject.Con/.template.config/template.json#L57-L58



### Custom Template with Code Execution

*   Ability to execute some custom code after running the template engine

    *   https://github.com/dotnet/templating/issues/286

    *   https://github.com/dotnet/templating/issues/1728

    *   https://github.com/dotnet/templating/wiki/Post-Action-Registry#run-script

    *   from David Karlas

        *   https://github.com/dotnet/templating/issues/3192

    *   repo

        *   https://github.com/dotnet/templating

        *   old

            *   https://github.com/ligershark/microsoft-templateengine

*   samples

    *   https://github.com/dotnet/templating/tree/main/test/Microsoft.TemplateEngine.TestTemplates/test_templates/PostActions

    *   https://github.com/moljac/HolisticWare.WebSite.Notes/blob/master/dotnet-netfx/core/dotnet-new-templates.md

        *   details

            *   https://github.com/moljac/HolisticWare.WebSite.Notes/tree/master/dotnet-netfx/core/dotnet-new-templates
            
            *   https://github.com/dotnet/templating/issues/3192

*   https://cfrenzel.com/dotnet-new-templating-nuget/

#### `SpecialCustomOperations`

*   https://stackoverflow.com/questions/60056191/add-optional-content-in-dotnet-new-templates-in-non-c-sharp-files



#### Further Investigation

`ps1` scripts in `tools/` folder:

```
WARNING: NU5110: The script file '_Placeholder_.XamarinAndroid.Maven.Bindings/scripts/run-all.ps1' is outside the 'tools' folder and hence will not be executed during installation of this package. Move it into the 'tools' folder.
WARNING: NU5110: The script file '_Placeholder_.XamarinAndroid.Maven.Bindings/scripts/nugethoblaster/nugethoblaster.ps1' is outside the 'tools' folder and hence will not be executed during installation of this package. Move it into the 'tools' folder.
WARNING: NU5110: The script file '_Placeholder_.XamarinAndroid.Maven.Bindings/scripts/binderate/binderate.ps1' is outside the 'tools' folder and hence will not be executed during installation of this package. Move it into the 'tools' folder.
WARNING: NU5111: The script file '_Placeholder_.XamarinAndroid.Maven.Bindings/scripts/run-all.ps1' is not recognized by NuGet and hence will not be executed during installation of this package. Rename it to install.ps1, uninstall.ps1 or init.ps1 and place it directly under 'tools'.
```

*   nugets
        
    *   Microsoft.TemplateEngine.Cli
        
        *   https://www.nuget.org/packages/Microsoft.TemplateEngine.Cli/
        
        *   dependencies
        
            *   Microsoft.DotNet.Cli.CommandLine
            
                *   https://www.nuget.org/packages/Microsoft.DotNet.Cli.CommandLine/
            
                *   404 - not listed

            *   Microsoft.DotNet.TemplateLocator
            
                *   https://www.nuget.org/packages/Microsoft.DotNet.TemplateLocator/
            
                *   404 - not listed
