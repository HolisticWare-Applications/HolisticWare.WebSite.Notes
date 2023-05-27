# Improvements

readme.md

*   https://github.com/xamarin/xamarin-android/issues/5352

*   Classic Item Groups? #40

    *   https://github.com/xamarin/Xamarin.Legacy.Sdk/issues/40


*   https://github.com/HolisticWare-Xamarin-Tools/HolisticWare.Xamarin.Tools.Bindings.XamarinAndroid.FassBinderMeister

*   https://github.com/jpobst/Prototype.Android.MavenBindings

## TODO

### Urgent

*   update 

    *   list (config.json) update

        *   bindings

            *   `"dependencyOnly": false`

            *   Maven discovery

        *   dependenies 

            *   `"dependencyOnly": true`

            *   NuGet discovery

*   nuget download count data

    *   `nuget_id.versioned.csv` per 

        *   date

        *   nuget/artifact version


## Bindings improvements

*   2 use cases:

    *   old/existing - update

        *   known 
        
        urls

        *   nuget id

        *   possibly unknown nuget version

    *   new binding

        *   unknown urls

        *   unknown nuget metadata


*   problem 

    *   metadata 
    
        *   existence

        *   retrieval

            *   urls (for downloads)

            *   version[s]

    *   metadata

        *   required
    
            *   maven

            *   nuget

        *   optional

            *   github

                *   AndroidX

                *   GPS-FB-MKit

Artifact(s)	

    *   Binaries

        *   aar

        *   jar

    *   source
    
    *   javadoc  
    
        $"{artifactid}-16.0.0-javadoc.jar

    *   gradle-module-metadata
    
    *   pom
    
## nuget

*   metadata

    *   https://github.com/NuGet/Home/pull/12174
