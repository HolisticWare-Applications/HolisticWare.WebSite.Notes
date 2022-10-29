# Metadata for Bindings payloads

metadata-for-bindings-payloads.md

*   https://github.com/NuGet/Home/pull/12174


Sorry for coming late to the show. 

I maintain:

-   AndroidX (AX) 

    https://github.com/xamarin/AndroidX

-   GooglePlayServices, Firebase, MLKit (GPS-FB-MLKit)

    https://github.com/xamarin/GooglePlayServicesComponents

And when I get some air I work on "bindings improvements" which should improve productivity and more.

So, I will express my opinion only for Android (.NET for Android - formerly Xamarin.Android), though
IMO this should be extended to .NET for iOS and maybe other platforms.

"Bindings improvements" include

-   discoverability/identification (both Maven and NuGet)

-   dependency graphs (both Maven and NuGet)

    Here I work on porting my graph theory library from c++ to c# and thanks to Generic Math it is
    a lot easier nowdays.

    https://devblogs.microsoft.com/dotnet/dotnet-7-generic-math/
    https://devblogs.microsoft.com/dotnet/preview-features-in-net-6-generic-math/

    I need formal methods to build graph/trees, find leaves (all nodes) and detect dependency cycles
    for both Maven and NuGet.

I am already using some of the utilities in our repos for

-   building `cgmanifest.json`

    https://github.com/xamarin/AndroidX/blob/main/cgmanifest.json

    https://github.com/xamarin/GooglePlayServicesComponents/blob/main/cgmanifest.json

-   detecting dates when NuGet packages were published

Up to recently we have added Maven fully qualified metadata for artifact in 2 forms:

-   `artifact=androidx.compose.material:material-ripple` 
-   `artifact_versioned=androidx.compose.material:material-ripple:1.0.5`

to nuget fields 

- Description
- Summary (sometimes)
- Tags

Visible here:

https://api.nuget.org/v3/registration5-gz-semver2/xamarin.androidx.compose.material.ripple/index.json

This was OK and I am able to use server side NuGet protocol (HttpClient + JSON/XML parsing) to increase productivity of maintenance on both of repos.

Last updates .NET for Android team decided to keep this information only in `Tags` node.

-   identifying binaries used (either distributed or downloaded by the package during the build)

-   dependency identification

    -   type 
        -   maven
        -   native
    -   identity
    -   version

With this there would be 1:1 mapping from NuGet package (versioned) to Maven/Native package (versioned)
This would help maintainers with 

1.  keeping track of published (bound Maven or native libraries),

    Getting data for latest nuget package and mapping it to maven fully qualified versioned id
    would ease discoverability what is to be updated.

2.  updates and 

    see 1.

3.  troubleshooting 

    Primarily checking dependency graphs 

    -   for duplicate transitive dependencies (possibly with different versions)

4.  security checks (component governance)

5.  curation (currated package publishing)

    With lowering the bar for bindings via "bindings improvements" it is to be expected to have 
    flood of bindings packages.
    NuGet publishing proces could add step to verify if given Maven/Native artifact is already 
    published in some other NuGet package.



*   Maven

    *   project

        ```xml
        <ItemGroup>
            <PackageAttribute Include="maven.GroupId" Value="androidx.activity" />
            <PackageAttribute Include="maven.ArtifactId" Value="activity" />
            <PackageAttribute Include="maven.VersionId" Value="1.6.0" />
        </ItemGroup>
        ```

        NOTE: this could be derived from curernt (and future) .NET for Android (Xamarin.Android) 
        BuildActions for binding artifacts (`Embedd`)

    *   nuspec

        ```xml
        <!--
            ... snip
        -->
        <package>
            <metadata>
                <attributes>
                <attribute key="maven.GroupId">androidx.activity</attribute>
                <attribute key="maven.ArtifactId">activity</attribute>
                <attribute key="maven.Version">1.6.0</attribute>
                </attributes>
            </metadata>
        <!--
            ... snip
        -->
        </package>
        ```   

*   Native

    *   project (packaging)

        ```xml
        <ItemGroup>
            <AndroidNativeLibrary Include="path/to/libfoo.so">
                <Abi>armeabi</Abi>
            </AndroidNativeLibrary>
        </ItemGroup>
        ```

    *   nuspec

        ```xml
        <package>
            <metadata>
                <attributes>
                <attribute key="native.LibraryName">libfoo</attribute>
                <attribute key="native.Version">1.6.0</attribute>
                </attributes>
            </metadata>
        </package>
        ```

