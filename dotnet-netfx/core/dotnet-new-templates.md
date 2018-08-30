# dotnet new templates

Templates are nuget packages listed on nuget:

https://www.nuget.org/

and `dotnetnew` site where lists of templates can be found:

http://dotnetnew.azurewebsites.net/


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


    ~/.templateengine/dotnetcli/v2.0.0/settings.json
    ~/.templateengine/dotnetcli/v2.0.0/templatecache.json

## Problems observed

    # nuget restore invalid version errors
    dotnet new .
    # OK
    dotnet new ./

## Links / References    
    
*   https://github.com/dotnet/dotnet-template-samples
*   https://github.com/dotnet/docs/blob/master/docs/core/tutorials/create-custom-template.md
*   https://github.com/dotnet/docs/blob/master/docs/core/tools/custom-templates.md
*   https://github.com/dotnet/docs/blob/master/docs/core/tools/dotnet-new.md

Detailed:

*   https://github.com/dotnet/templating/wiki/Reference-for-template.json
*   https://github.com/dotnet/templating/wiki/%22Runnable-Project%22-Templates
*   https://www.jerriepelser.com/blog/tips-for-developing-dotnet-new-templates/
*   https://dotnetthoughts.net/create-a-dot-net-new-project-template-in-dot-net-core/
*   https://rehansaeed.com/custom-project-templates-using-dotnet-new/
*   https://docs.particular.net/nservicebus/dotnet-templates
*   https://dotnetthoughts.net/create-a-dot-net-new-project-template-in-dot-net-core/
*   https://reynders.co/create-your-own-templates-for-dotnet-new/
*   https://jeremylindsayni.wordpress.com/2017/03/21/how-to-a-net-core-template-to-create-a-new-project-from-the-command-line-with-dotnet-new-i/

