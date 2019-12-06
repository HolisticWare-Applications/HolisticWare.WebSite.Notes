## Android Team Meetings Boston 2019-10-21

android-teams-meetings-boston-2019-10.md

*   https://paper.dropbox.com/doc/Xamarin.Android-2019-Meeting-Schedule-Tkjb4EsjdMRetd3IohS0L

## Mine

15-30 minutes session

*   intro

    *   nothing technically impressive

    *   eat an elephant problem

    *   Alija Sirotanovic

*   Android OS extension/accompanying/satellite libraries (artifacts)

*   status (current)

    *   AndroidX

        *   89

        *   70+ 201901

    *   Android.Support

        *   67

    *   GooglePlayServices/Firebase

        *   Android.Support dependencies

            *   85 201910

        *   AndroidX dependencies

            *   99 201910

    *   reduced release cycle down to 2-3 days, week, average 2 weeks

    *   incomming/new issues

        *   1 per week (since August)

        *   more and more feature requests (suggestions)

            *   for GPS-FB abstraction like Xamarin.Forms



*   problems (issues ran into)

    *   bindings complexity

        *   numbers of artifacts

        *   dependency graph

        *   google redesigning (refactoring) artifacts

    *   runtime problems

        *   number of assemblies?

*   tooling (for shovel)

    *   Directory.Build.props

    *   decompilers

    *   Intellisense

    *   Msbuild

        *   integration with gradle

        *   https://github.com/onovotny/MSBuildSdkExtras/

        *   https://github.com/onovotny/MSBuildSdkExtras/blob/master/Source/MSBuild.Sdk.Extras/Build/Platforms/Xamarin/Xamarin.Android.targets

